import discord
import os
import random
import json
import aiofiles
from discord.ext import commands
import asyncio

# Fichiers pour les notes et le suivi du DS actuel
NOTES_FILE = 'notes.json'
DS_INDEX_FILE = 'ds_index.json'
MP_USERS_FILE = 'mp_users.json'

# Si le fichier de notes n'existe pas, on le crée
if not os.path.exists(NOTES_FILE):
    with open(NOTES_FILE, 'w') as file:
        json.dump({}, file)

# Si le fichier d'index des DS n'existe pas, on le crée avec un index de 0
if not os.path.exists(DS_INDEX_FILE):
    with open(DS_INDEX_FILE, 'w') as file:
        json.dump({'current_ds': 0}, file)

# Si le fichier d'utilisateurs MP n'existe pas, on le crée
if not os.path.exists(MP_USERS_FILE):
    with open(MP_USERS_FILE, 'w') as file:
        json.dump([], file)

# Charger les notes depuis le fichier
def load_notes():
    with open(NOTES_FILE, 'r') as file:
        return json.load(file)

# Sauvegarder les notes dans le fichier
def save_notes(data):
    with open(NOTES_FILE, 'w') as file:
        json.dump(data, file, indent=4)

# Charger l'index du DS actuel
def load_ds_index():
    with open(DS_INDEX_FILE, 'r') as file:
        return json.load(file)['current_ds']

# Sauvegarder l'index du DS actuel
def save_ds_index(index):
    with open(DS_INDEX_FILE, 'w') as file:
        json.dump({'current_ds': index}, file, indent=4)

# Charger la liste des utilisateurs pour MP
def load_mp_users():
    with open(MP_USERS_FILE, 'r') as file:
        return json.load(file)

# Sauvegarder la liste des utilisateurs pour MP
def save_mp_users(users):
    with open(MP_USERS_FILE, 'w') as file:
        json.dump(users, file, indent=4)

# Initialisez les intents
intents = discord.Intents.default()
intents.messages = True
intents.message_content = True  # Activez l'intent pour le contenu des messages
intents.members = True
intents.reactions = True  # Activez l'intent pour les réactions

# Initialisez le bot avec un préfixe pour les commandes et les intents
bot = commands.Bot(command_prefix="!", intents=intents)

# Stockez les messages envoyés par le bot et leurs correspondances avec les numéros d'image
sent_messages = {}

# Charger le numéro de la semaine depuis le fichier JSON
def load_semaine():
    with open('semaine.json', 'r') as f:
        data = json.load(f)
    return data['semaine']

# Obtenir la liste des images disponibles pour la semaine et la lettre donnée
def get_images(num_semaine, active_folders):
    images = []
    for letter in active_folders:
        path = f"Colles/{num_semaine}/{letter}"
        if os.path.exists(path):
            images += [f"{letter}/{f}" for f in sorted(os.listdir(path)) if f.endswith('.png')]
    return images

# Fonction pour obtenir une image aléatoire à partir d'un dossier
async def get_random_image_from_folder(folder_path):
    if not os.path.exists(folder_path):
        return None
    images = [f for f in os.listdir(folder_path) if os.path.isfile(os.path.join(folder_path, f))]
    if not images:
        return None
    return os.path.join(folder_path, random.choice(images))

# Fonction pour lire le programme actuel à partir d'un fichier
async def get_current_program():
    try:
        async with aiofiles.open('current_program.txt', mode='r') as f:
            content = await f.read()
            return int(content.strip())
    except Exception as e:
        print(f"Erreur lors de la lecture du fichier current_program.txt: {e}")
        return None

@bot.event
async def on_ready():
    print(f"Bot connecté en tant que {bot.user}")

# Ajoutez une liste pour suivre les tâches
active_tasks = []
# Commande pour les admins: !note_ds
@bot.command()
@commands.has_permissions(administrator=True)
async def note_ds(ctx):
    global active_tasks  # Référence à la liste des tâches actives
    notes_data = load_notes()
    current_ds = load_ds_index() + 1  # Passer automatiquement au prochain DS

    if str(current_ds) not in notes_data:
        notes_data[str(current_ds)] = {'A': {}, 'B': {}, 'C': {}}

    # Sauvegarder immédiatement le nouvel index du DS
    save_ds_index(current_ds)

    # Charger la liste des utilisateurs à qui envoyer un MP
    mp_users = load_mp_users()

    async def envoyer_message(member):
        try:
            def check(m):
                return m.author == member and isinstance(m.channel, discord.DMChannel)

            # Demander le sujet et vérifier la validité
            while True:
                await member.send("Bonjour, je viens pour calculer les classements du dernier DS de maths.\nLors du dernier DS, quel est le sujet que tu as fait ? (A, B ou C)")

                sujet_msg = await bot.wait_for('message', check=check)
                sujet = sujet_msg.content.upper()

                if sujet in ['A', 'B', 'C']:
                    break  # Sujet valide, on sort de la boucle
                else:
                    await member.send("Sujet invalide. Veuillez répondre par A, B ou C.")

            # Demander la note et gérer la saisie incorrecte
            while True:
                await member.send("Quelle est ta note sur 20 ? (Utilise un point ou une virgule pour les décimales)")

                note_msg = await bot.wait_for('message', check=check)
                note_str = note_msg.content.replace(',', '.')  # Remplacer la virgule par un point

                try:
                    note = float(note_str)
                    if -50 <= note <= 50:
                        break  # Note valide, on sort de la boucle
                    elif note < -50:
                        await member.send("Ta note n'est-elle pas trop basse?")
                    else:
                        await member.send("Ta note n'est-elle pas trop haute?")
                except:
                    await member.send("Note invalide. Veuillez entrer un nombre valide avec un point ou une virgule.")


            # Enregistrer la note actuelle
            notes_data[str(current_ds)][sujet][str(member.id)] = note
            save_notes(notes_data)

            
            await member.send(f"Merci, ta date de naissance, elle a bien été enregistrée!")

        except Exception as e:
            print(f"Erreur lors de l'envoi du message à {member.name}: {e}")

    # Nettoyer toutes les tâches actives avant d'envoyer de nouveaux messages
    for task in active_tasks:
        if not task.done():
            task.cancel()

    active_tasks = []  # Réinitialiser la liste des tâches

    # Envoyer un message dans le channel indiquant le début de l'envoi des messages
    await ctx.send("Je vais demander les notes à tous les élèves")

   # Créer une tâche pour chaque membre en parallèle
    for member in ctx.guild.members:
        if not member.bot and str(member.id) in mp_users:
            task = asyncio.create_task(envoyer_message(member))  # Créer une nouvelle tâche
            active_tasks.append(task)
            await asyncio.sleep(1)  # Attendre 1 seconde entre chaque envoi

    # Exécuter toutes les tâches simultanément
    await asyncio.gather(*active_tasks)


# Commande pour chaque utilisateur: !note
@bot.command()
async def note(ctx, ds_number: int = 0):
    notes_data = load_notes()
    current_ds = load_ds_index()

    # Si aucun numéro de DS n'est précisé, on prend le DS actuel
    ds_to_check = current_ds - ds_number if ds_number > 0 else current_ds + ds_number

    if str(ds_to_check) not in notes_data:
        await ctx.author.send(f"Aucune note trouvée pour le DS {ds_to_check}.")
        return

    user_id = str(ctx.author.id)
    user_subject = None
    user_note = None

    for sujet, users in notes_data[str(ds_to_check)].items():
        if user_id in users:
            user_subject = sujet
            user_note = users[user_id]
            break

    if user_subject is None:
        await ctx.author.send(f"Tu n'as pas encore soumis de note pour le DS {ds_to_check}.")
        return

    # Calculer le classement
    all_notes = list(notes_data[str(ds_to_check)][user_subject].values())
    all_notes.sort(reverse=True)

    rank = all_notes.index(user_note) + 1
    moyenne = sum(all_notes) / len(all_notes)
    total_participants = len(all_notes)

    # Envoyer les informations à l'utilisateur
    if total_participants > 2:
        await ctx.author.send(f"Pour le DS {ds_to_check}, tu es classé **{rank}/{total_participants}** pour le sujet {user_subject}.\n"
                          f"La moyenne pour ce sujet est de {moyenne:.2f}/20.")
    else:
        await ctx.author.send(f"Pour le DS {ds_to_check}, tu es classé **{rank}/{total_participants}** pour le sujet {user_subject}.\n"
                          f"La moyenne pour ce sujet sera disponible quand plus de gens auront fourni leur note afin de garantir le secret des notes.")
    await ctx.send("Classement envoyé")

@bot.command()
async def note_modif(ctx, ds_number: int = -1):
    if ds_number == -1:
        await ctx.send(f"Tu n'as pas fourni le numéro du DS! Si tu veux modifier le DS 5, écris `!note_modif 5`")
        return
    notes_data = load_notes()

    if str(ds_number) not in notes_data:
        await ctx.send(f"Aucune donnée trouvée pour le DS {ds_number}.")
        return

    user_id = str(ctx.author.id)
    user_subject = None
    user_note = None

    # Vérifier si l'utilisateur a déjà une note pour ce DS
    for sujet, users in notes_data[str(ds_number)].items():
        if user_id in users:
            user_subject = sujet
            user_note = users[user_id]
            break

    if user_subject is None:
        await ctx.author.send(f"Tu n'as pas de note enregistrée pour le DS {ds_number}.")
    else:
        await ctx.author.send(f"Tu avais soumis la note de {user_note}/20 pour le sujet {user_subject} lors du DS {ds_number}.\n"
                          f"Nous allons maintenant la modifier.")
        await ctx.send("Message envoyé")
    # Fonction pour vérifier que le message provient bien de l'utilisateur dans un DM
    def check(m):
        return m.author == ctx.author and isinstance(m.channel, discord.DMChannel)

    # Redemander le sujet et vérifier sa validité
    while True:
        await ctx.author.send("Quel est le sujet que tu as fait ? (A, B ou C)")
        sujet_msg = await bot.wait_for('message', check=check)
        sujet = sujet_msg.content.upper()

        if sujet in ['A', 'B', 'C']:
            break  # Sujet valide, on sort de la boucle
        else:
            await ctx.author.send("Sujet invalide. Veuillez répondre par A, B ou C.")

    # Redemander la note
    await ctx.author.send("Quelle est ta nouvelle note sur 20 ?")
    note_msg = await bot.wait_for('message', check=check)
    note = float(note_msg.content)

    # Mettre à jour la note dans le fichier
    notes_data[str(ds_number)][sujet][user_id] = note
    save_notes(notes_data)

    await ctx.author.send(f"Merci, ta nouvelle note pour le sujet {sujet} a été enregistrée pour le DS {ds_number}.")

@bot.command()
async def note_mp(ctx):
    mp_users = load_mp_users()
    user_id = str(ctx.author.id)

    if user_id in mp_users:
        mp_users.remove(user_id)
        await ctx.send("Ton identifiant a été retiré de la liste des utilisateurs pour les messages privés.")
    else:
        mp_users.append(user_id)
        await ctx.send("Ton identifiant a été ajouté à la liste des utilisateurs pour les messages privés.")

    save_mp_users(mp_users)

# Commande pour obtenir une image aléatoire
@bot.command(name="ccinp")
async def ccinp(ctx, arg=None):
    current_program = await get_current_program()
    if current_program is None:
        await ctx.send("Erreur: Impossible de lire le programme actuel.")
        return
    if arg is None:
        week = current_program
    elif arg.lower() == "help":
        await ctx.send("**Pour les énoncés:**\n*` !ccinp` -> affiche un énoncé aléatoire du programme de khôlle actuel\n* `!ccinp X` -> affiche un énoncé aléatoire du programme de khôlle dans X programmes (ex: !ccinp -1 pour obtenir un énoncé du programme précédent)\n* `!ccinp all` -> affiche un énoncé aléatoire parmi tous les énoncés\n* `!ccinp analyse` -> affiche un énoncé aléatoire d'un exercice d'analyse\n* `!ccinp algebre` -> affiche un énoncé aléatoire d'un exercice d'algèbre\n* `!ccinp proba` -> affiche un énoncé aléatoire d'un exercice de probabilités\n* `!ccinp seeX` (sans espace) -> affiche l'énoncé n° X\n\n**Pour les corrigés:**\n* `!corrige X` -> affiche le corrigé n° X\n* Ajouter n'importe quelle réaction sous un message contenant un énoncé affiche son corrigé\n\n**Pour les notes de ds:**\n*`!note` -> vous envoie par mp votre classement du dernier ds\n*`!note X` -> vous envoie par mp votre classement d'il y a X DS\n*`!note_modif X` -> vous permet de modifier les valeurs entrées pour le DS X (! pas pour le DS actuel - X)\n*`!note_mp` -> toggle vous retirant/ajoutant de la liste des personnes recevant un mp pour demander votre note à chaque ds")
    elif arg.lower()[0] == "s" and arg.lower()[1] == "e" and arg.lower()[2] == "e" and arg.lower()[3:].isdigit():
        if 1 <= int(arg.lower()[3:]) <= 58:
            correct_file = os.path.join('CCINP/Analyse', f'Enonce {arg.lower()[3:]}.png')
            if os.path.exists(correct_file):
                await ctx.send(file=discord.File(correct_file))
        elif int(arg.lower()[3:]) <= 94:
            correct_file = os.path.join('CCINP/Algebre', f'Enonce {arg.lower()[3:]}.png')
            if os.path.exists(correct_file):
                await ctx.send(file=discord.File(correct_file))
        elif int(arg.lower()[3:]) <= 112:
            correct_file = os.path.join('CCINP/Proba', f'Enonce {arg.lower()[3:]}.png')
            if os.path.exists(correct_file):
                await ctx.send(file=discord.File(correct_file))
        else:
            await ctx.send("Il n'y a pas d'énoncé portant ce numéro")
    elif arg.isdigit():
        week = current_program + int(arg)
    elif arg.lower() == "all":
        all_images = []
        base_path = 'CCINP'
        for week in range(1, 33):
            week_folder = os.path.join(base_path, f'Programme{week:02d}')
            if os.path.exists(week_folder):
                images = [os.path.join(week_folder, f) for f in os.listdir(week_folder) if os.path.isfile(os.path.join(week_folder, f))]
                all_images.extend(images)
        
        if not all_images:
            await ctx.send("Aucune image trouvée.")
            return
        
        random_image = random.choice(all_images)
        sent_message = await ctx.send(file=discord.File(random_image))
        # Extraire le numéro X du nom du fichier
        if "Enonce" in random_image:
            num = int(random_image.split("Enonce ")[1].split(".png")[0])
            sent_messages[sent_message.id] = num
        return
    elif arg.lower() in ["proba", "algebre", "analyse"]:
        base_path = 'CCINP'
        folder_path = os.path.join(base_path, arg.capitalize())
        random_image = await get_random_image_from_folder(folder_path)
        
        if random_image is None:
            await ctx.send(f"Le dossier {arg.capitalize()} est vide ou introuvable.")
        else:
            sent_message = await ctx.send(file=discord.File(random_image))
            # Extraire le numéro X du nom du fichier
            if "Enonce" in random_image:
                num = int(random_image.split("Enonce ")[1].split(".png")[0])
                sent_messages[sent_message.id] = num
        return
    else:
        await ctx.send("Argument invalide. Utilisez un nombre, 'all', 'proba', 'algebre', ou 'analyse'.")
        return
    
    if week < 1 or week > 32:
        await ctx.send("Veuillez entrer un numéro de Programme entre 1 et 32.")
        return
    
    week_folder = os.path.join('CCINP', f'Programme{week:02d}')
    random_image = await get_random_image_from_folder(week_folder)
    
    if random_image is None:
        await ctx.send(f"Le dossier Programme{week:02d} est vide ou introuvable.")
    else:
        sent_message = await ctx.send(file=discord.File(random_image))
        # Extraire le numéro X du nom du fichier
        if "Enonce" in random_image:
            num = int(random_image.split("Enonce ")[1].split(".png")[0])
            sent_messages[sent_message.id] = num

# Commande pour obtenir une image de correction spécifique
@bot.command(name="corrige")
async def corrige(ctx, num: int):
    correct_folder = 'CCINP/Corriges'
    correct_file = os.path.join(correct_folder, f'Corrige {num}.png')
    
    if os.path.exists(correct_file):
        await ctx.send(file=discord.File(correct_file))
    else:
        await ctx.send(f"Le fichier Corrige{num} est introuvable.")

@bot.command(name="k")
async def k(ctx):
    num_semaine = load_semaine()
    
    # Dossiers activés par défaut : A et B activés, C désactivé
    active_folders = ['A', 'B']
    all_folders = ['A', 'B', 'C']
    
    def generate_embed(index, images, active_folders):
        embed = discord.Embed()
        
        if images:
            current_image = images[index]
            folder = current_image.split('/')[0]
            image_path = f"Colles/{num_semaine}/{current_image}"
            
            embed.title = f"Image {index+1}/{len(images)} de la semaine {num_semaine}"
            embed.set_image(url="attachment://image.png")
        else:
            # S'il n'y a aucune image
            embed.title = "Aucune image disponible"
            image_path = None
        
        # Statut des dossiers activés/désactivés dans l'embed
        status_a = '✅' if 'A' in active_folders else '❌'
        status_b = '✅' if 'B' in active_folders else '❌'
        status_c = '✅' if 'C' in active_folders else '❌'
        embed.add_field(name="Dossiers activés", value=f"A: {status_a} | B: {status_b} | C: {status_c}")
        
        return embed, image_path
    
    images = get_images(num_semaine, active_folders)
    
    # Vérification initiale s'il n'y a pas d'images disponibles
    if not images:
        embed, _ = generate_embed(0, images, active_folders)
        await ctx.send(embed=embed)
        return
    
    # Commence par la première image
    index = 0
    embed, image_path = generate_embed(index, images, active_folders)
    
    if image_path:
        file = discord.File(image_path, filename="image.png")
        message = await ctx.send(embed=embed, file=file)
    else:
        message = await ctx.send(embed=embed)
    
    # Ajouter les réactions
    await message.add_reaction("⬅️")  # Flèche gauche
    await message.add_reaction("➡️")  # Flèche droite
    await message.add_reaction("🔀")  # Random
    await message.add_reaction("🇦")  # Activer/désactiver A
    await message.add_reaction("🇧")  # Activer/désactiver B
    await message.add_reaction("🇨")  # Activer/désactiver C
    
    def check(reaction, user):
        return user == ctx.author and str(reaction.emoji) in ["⬅️", "➡️", "🔀", "🇦", "🇧", "🇨"] and reaction.message.id == message.id

    while True:
        try:
            reaction, user = await bot.wait_for("reaction_add", timeout=60.0, check=check)
            emoji = str(reaction.emoji)
            
            if emoji == "⬅️" and images:
                index = (index - 1) % len(images)
            elif emoji == "➡️" and images:
                index = (index + 1) % len(images)
            elif emoji == "🔀" and images:
                index = random.randint(0, len(images) - 1)
            elif emoji == "🇦":
                if 'A' in active_folders:
                    active_folders.remove('A')
                else:
                    active_folders.append('A')
            elif emoji == "🇧":
                if 'B' in active_folders:
                    active_folders.remove('B')
                else:
                    active_folders.append('B')
            elif emoji == "🇨":
                if 'C' in active_folders:
                    active_folders.remove('C')
                else:
                    active_folders.append('C')
            
            # Met à jour les images et réinitialise l'index si nécessaire
            images = get_images(num_semaine, active_folders)
            
            # Si aucune image n'est disponible
            if not images:
                embed, _ = generate_embed(0, images, active_folders)
                await message.edit(embed=embed, attachments=[])
                continue
            
            index = index % len(images)
            
            # Met à jour l'embed et l'image
            embed, new_image_path = generate_embed(index, images, active_folders)
            if new_image_path:
                new_file = discord.File(new_image_path, filename="image.png")
                await message.edit(embed=embed, attachments=[new_file])
            else:
                await message.edit(embed=embed, attachments=[])
            
            await message.remove_reaction(reaction.emoji, user)
        
        except asyncio.TimeoutError:
            break

# Événement pour gérer les réactions ajoutées aux messages
@bot.event
async def on_reaction_add(reaction, user):
    # Vérifiez si la réaction a été ajoutée à un message envoyé par le bot
    if reaction.message.id in sent_messages and user != bot.user:
        num = sent_messages[reaction.message.id]
        correct_folder = 'CCINP/Corriges'
        correct_file = os.path.join(correct_folder, f'Corrige {num}.png')
        
        if os.path.exists(correct_file):
            await reaction.message.channel.send(file=discord.File(correct_file))
        else:
            await reaction.message.channel.send(f"Le fichier Corrige{num} est introuvable.")

# Remplacez 'YOUR_BOT_TOKEN' par le token de votre bot
bot.run('token du bot discord')
