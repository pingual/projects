import discord
from discord.ext import commands, tasks
from discord import app_commands, File
from PIL import Image, ImageDraw, ImageFont
import json
import os
import re
import asyncio
import uuid
from datetime import datetime, timedelta
import aiohttp
from bs4 import BeautifulSoup
from io import BytesIO

TOKEN = 'token du bot discord'

intents = discord.Intents.default()
intents.message_content = True
intents.members = True

bot = commands.Bot(command_prefix='!', intents=intents)
semaine_vacances = [43,44,52,1,7,8,15,16]
anniversaires = {
  "données retirées": "1/1"
}

prenomid = {
  "données retirées": "discord_id"
}

anniversaires2 = {
    "données retirées": "1/1"
}

prenomid2 = {"données retirées": "discord_id"}

# Les types de fichiers et leurs réactions correspondantes
file_types = {
    "📚": "cours",
    "📄": "exercices",
    "📩": "DM",
    "✅": "corrigés de DM",
    "📊": "DS",
    "📝": "corrigés de DS",
    "🗂️": "formulaires",
    "🗒️": "programmes de khôlle"
}

# Dictionnaire des noms de fichiers
cours_file_names = {
    "données retirées": "liste des noms de fichiers"
}

prenomaff = {
  "données retirées": "Version du pseudo à afficher"
}

# Fonction pour charger les données depuis les fichiers JSON
def load_json(filename):
    if os.path.exists(filename):
        with open(filename, 'r', encoding='utf-8') as file:
            return json.load(file)
    return {}

# Charger les emplois du temps pour les semaines paires et impaires
timetable_paire = load_json('week_paire.json')
timetable_impaire = load_json('week_impaire.json')

# Charger la valeur de "semaine"
semaine_info = load_json('semaine.json')

# Charger les couleurs personnalisées
user_colors = load_json('user_colors.json')

# Charger les groupes d'utilisateurs
user_groups = load_json('user_groups.json')

# Charger les khôlles
kholles_table = load_json('kholles_table.json')
kholles_details = load_json('kholles_details.json')

# Mapping des cours vers des paramètres généraux
course_parameters = {
    "TP Physique\n": "physique",
    "TD Physique\n": "physique",
    "Physique\n": "physique",
    "Mathématiques\n": "maths",
    "TD Mathématiques\n": "maths",
    "TIPE\n": "tipe",
    "Sport\n": "sport",
    "Anglais\n": "anglais",
    "Allemand\n": "allemand",
    "Espagnol\n": "espagnol",
    "Arabe\n": "arabe",
    "SII\n": "sii",
    "TD SII\n": "sii",
    "Français - Philosophie\n": "francais",
    "TD Informatique\n": "info",
    "Khôlle Informatique\n": "info",
    "Informatique\n": "info",
    "TP Informatique\n" : "info",
    "DS\n": "ds",
    "DS de maths\n": "ds",
    "DS de physique\n": "ds",
    "DS d'informatique\n": "ds",
    "DS d'anglais\n": "ds",
    "DS de français\n": "ds"
}

course_colors = {
    "physique": "#C3FFB6",  # lightgreen
    "maths": "#FFB6B8",    # red
    "anglais": "#F3B6FF",     # pink
    "francais": "#FFFFB6",  # yellow
    "info": "#B6FFFC",  # cyan
    "tipe": "#FFFFE0",  # lightyellow
    "sii": "#CAB69E",
    "espagnol" : "#FFFFFF",
    "allemand" : "#FFFFFF",
    "sport": "#FFFFF0", #beige
    "ds": "#FFFFFF",  # white
    "kholle": "#000000", # black
}

classement_separe = [[]] # Données retirées: classement des élèves de la classe
classements_globaux = [[]] # Données retirées: classement des élèves de la classe
subjects = ["Général", "Physique", "Maths", "Informatique", "Français", "LV1"] # Ordre des matières dans le classement des deux tableaux plus haut

def save_json(filename, data):
    with open(filename, 'w', encoding='utf-8') as file:
        json.dump(data, file, ensure_ascii=False, indent=4)

role_specific_courses_paire = load_json('role_specific_courses_paire.json')
role_specific_courses_impaire = load_json('role_specific_courses_impaire.json')

liste_ds = load_json('liste_ds.json')

# Charger les modifications temporaires
def load_temp_modifications():
    try:
        with open('temp_modifications.json', 'r') as f:
            return json.load(f)
    except FileNotFoundError:
        return {}
    
def save_temp_modifications(modifications):
    with open('temp_modifications.json', 'w') as f:
        json.dump(modifications, f, indent=4)

temp_modifications = load_temp_modifications()

# Charger la semaine actuelle depuis semaine.json
def load_current_week():
    with open("semaine.json", "r") as file:
        data = json.load(file)
    return data["semaine"]

# Charger les devoirs depuis devoirs.json
def load_devoirs():
    try:
        with open("devoirs.json", "r") as file:
            return json.load(file)
    except FileNotFoundError:
        return {}

def load_devoirs_b():
    try:
        with open("devoirs_b.json", "r") as file:
            return json.load(file)
    except FileNotFoundError:
        return {}

# Sauvegarder les devoirs dans devoirs.json
def save_devoirs(devoirs):
    with open("devoirs.json", "w") as file:
        json.dump(devoirs, file, indent=4)

def save_devoirs_b(devoirs):
    with open("devoirs_b.json", "w") as file:
        json.dump(devoirs, file, indent=4)

# Générer un ID unique pour chaque devoir
def generate_id():
    return str(uuid.uuid4())[:8]

# La commande slash pour ajouter un devoir
@bot.tree.command(name="devoir_add", description="Ajoute un devoir à une semaine donnée.")
@app_commands.describe(
    matiere="Choisissez la matière",
    jour="Jour de la semaine (lundi au vendredi)",
    semaine="Semaine où le devoir est dû (0 pour cette semaine, 1 pour la suivante, etc.)",
    contenu="Contenu du devoir (ex: DM, exercice, etc.)"
)
@app_commands.choices(matiere=[
    discord.app_commands.Choice(name="Maths", value="maths"),
    discord.app_commands.Choice(name="Physique", value="physique"),
    discord.app_commands.Choice(name="Info", value="info"),
    discord.app_commands.Choice(name="Français", value="français"),
    discord.app_commands.Choice(name="Anglais", value="anglais"),
    discord.app_commands.Choice(name="TIPE", value="tipe"),
],jour=[discord.app_commands.Choice(name="Lundi", value="lundi"),
        discord.app_commands.Choice(name="Mardi", value="mardi"),
        discord.app_commands.Choice(name="Mercredi", value="mercredi"),
        discord.app_commands.Choice(name="Jeudi", value="jeudi"),
        discord.app_commands.Choice(name="Vendredi", value="vendredi"),]
)
async def devoir_add(interaction: discord.Interaction, matiere: discord.app_commands.Choice[str], jour: str, semaine: int, contenu: str):
    semaine_actuelle = load_current_week()
    semaine_demandee = semaine_actuelle + semaine
    devoirs = load_devoirs_b()
    if interaction.channel.id == 1151022058831089726:
        devoirs = load_devoirs()

    # Ajouter un nouveau devoir avec un ID unique
    devoir_id = generate_id()
    devoir = {
        "id": devoir_id,
        "matiere": matiere.value,
        "semaine": semaine_demandee,
        "jour": jour.lower(),
        "contenu": contenu
    }

    # Stocker le devoir dans la base de données
    if str(semaine_demandee) not in devoirs:
        devoirs[str(semaine_demandee)] = []
    devoirs[str(semaine_demandee)].append(devoir)
    if interaction.channel.id == 1151022058831089726:
        save_devoirs(devoirs)
    else:
        save_devoirs_b(devoirs)

    await interaction.response.send_message(f"Devoir de {matiere.value} ({contenu}) ajouté avec succès pour le {jour.lower()} de la semaine {semaine_demandee} ! ID: {devoir_id}")

# La commande slash pour afficher les devoirs de la semaine
@bot.tree.command(name="devoirs", description="Affiche les devoirs pour la semaine actuelle ou une semaine donnée.")
@app_commands.describe(semaine="Semaine actuelle + ce nombre")
async def devoirs(interaction: discord.Interaction, semaine: int = 0):
    semaine_actuelle = load_current_week()
    semaine_demandee = semaine_actuelle + semaine
    devoirs = load_devoirs_b()
    if interaction.channel.id == 1151022058831089726:
        devoirs = load_devoirs()

    # Récupérer les devoirs de la semaine demandée
    semaine_str = str(semaine_demandee)
    if semaine_str not in devoirs or len(devoirs[semaine_str]) == 0:
        await interaction.response.send_message(f"Aucun devoir trouvé pour la semaine {semaine_demandee}.")
        return

    # Trier les devoirs par jour
    jours_ordre = ["lundi", "mardi", "mercredi", "jeudi", "vendredi"]
    devoirs_semaine = sorted(devoirs[semaine_str], key=lambda x: jours_ordre.index(x["jour"]))

    # Construire le message de réponse
    response_message = f"Devoirs pour la semaine {semaine_demandee} :\n"
    for devoir in devoirs_semaine:
        response_message += f"- {devoir['jour'].capitalize()}: {devoir['matiere']} - {devoir['contenu']} (ID: {devoir['id']})\n"

    await interaction.response.send_message(response_message)

# La commande slash pour supprimer un devoir par ID
@bot.tree.command(name="devoir_remove", description="Supprime un devoir avec l'ID donné.")
@app_commands.describe(devoir_id="ID du devoir à supprimer")
async def devoir_remove(interaction: discord.Interaction, devoir_id: str):
    devoirs = load_devoirs_b()
    if interaction.channel.id == 1151022058831089726:
        devoirs = load_devoirs()
    removed = False

    # Chercher et supprimer le devoir dans toutes les semaines
    for semaine in devoirs:
        for devoir in devoirs[semaine]:
            if devoir["id"] == devoir_id:
                devoirs[semaine].remove(devoir)
                removed = True
                break
        if removed:
            if interaction.channel.id == 1151022058831089726:
                save_devoirs(devoirs)
            else:
                save_devoirs_b(devoirs)
            await interaction.response.send_message(f"Le devoir avec l'ID {devoir_id} a été supprimé avec succès.")
            return

    await interaction.response.send_message(f"Aucun devoir trouvé avec l'ID {devoir_id}.")

@bot.tree.command(name='anniv', description='Affiche les prochains anniversaires')
@app_commands.describe(nombre_anniversaires='Nombre d\'anniversaires à afficher')
async def prochains_anniversaires(interaction: discord.Interaction, nombre_anniversaires: int = 10):
    total_anniversaires = len(anniversaires)
    if nombre_anniversaires > total_anniversaires:
        await interaction.response.send_message(f"Il n'y a que {total_anniversaires} élèves dans la classe!")
        nombre_anniversaires = total_anniversaires  # Ajuster pour afficher le nombre maximum d'anniversaires disponibles

    now = datetime.now()

    # Création de la liste des prochains anniversaires triés par date
    prochains_anniversaires = sorted([
        {'nom': nom, 'date': datetime(now.year, int(date.split('/')[1]), int(date.split('/')[0]))} for nom, date in
        anniversaires.items()], key=lambda x: x['date'])

    # Trouver l'index du premier anniversaire à venir
    index_premier_anniversaire = next((i for i, a in enumerate(prochains_anniversaires) if a['date'] >= now), 0)

    # Obtenir les anniversaires à afficher à partir de l'index trouvé
    prochains_anniversaires_circulaire = [
        f"**{i + 1}.** {prenomaff[a['nom']] if a['nom'] in prenomaff else a['nom']}: {a['date'].strftime('%d/%m')}"
        for i, a in enumerate(prochains_anniversaires[index_premier_anniversaire:] + prochains_anniversaires[:index_premier_anniversaire])
    ][:nombre_anniversaires]

    # Création de l'embed des prochains anniversaires
    prochains_anniversaires_embed = discord.Embed(
        title="Prochains Anniversaires",
        colour=discord.Colour.blue(),
        description="\n".join(prochains_anniversaires_circulaire)
    )

    # Envoi de l'embed dans le canal où la commande a été appelée
    await interaction.response.send_message(embed=prochains_anniversaires_embed)

@bot.tree.command(name='file', description='Choisissez un fichier à obtenir')
async def file_command(interaction: discord.Interaction):
    # Création du menu déroulant pour le type de fichier
    class FileSelect(Select):
        def __init__(self):
            options = [
                discord.SelectOption(label=desc, value=emoji)
                for emoji, desc in file_types.items()
            ]
            super().__init__(placeholder="Choisissez un type de fichier...", min_values=1, max_values=1, options=options)

        async def callback(self, interaction: discord.Interaction):
            file_type = file_types[self.values[0]]

            if file_type == "formulaires":
                files = [
                    "Maths/Formulaires/Derivees.pdf",
                    "Maths/Formulaires/Trigo.pdf",
                    "Maths/Formulaires/DL usuels.pdf"
                ]
                for file_path in files:
                    await interaction.response.send_message(file=discord.File(file_path))
                return

            # Création d'un champ de texte pour le numéro du fichier
            class NumberInput(discord.ui.View):
                def __init__(self):
                    super().__init__()
                    self.number = None

                @discord.ui.text_input(label="Quel est le numéro du fichier souhaité ?", placeholder="Entrez le numéro...")
                async def number_input(self, interaction: discord.Interaction, number: str):
                    self.number = number
                    await interaction.response.send_message("Merci, je traite votre demande...")
                    self.stop()

            view = NumberInput()
            await interaction.response.send_message(f"Quel est le numéro du fichier {file_type} que vous souhaitez ?", view=view)

            # Attendre que l'utilisateur envoie un numéro
            try:
                await bot.wait_for('interaction', timeout=60.0, check=lambda i: i.user == interaction.user and isinstance(i.component, discord.ui.TextInput))
            except asyncio.TimeoutError:
                await interaction.followup.send("Temps écoulé, veuillez réessayer.")
                return

            # Traitement du fichier demandé
            n = int(view.number)
            file_path = None

            if file_type == "cours" and n in cours_file_names:
                file_path = f"Maths/Cours/{cours_file_names[n]}.pdf"
            elif file_type == "DM" and 0 <= n <= 27:
                file_path = f"Maths/DM/Sujets/DM_{n}.pdf" if n != 27 else f"Maths/DM/Sujets/DM_16_bis.pdf"
            elif file_type == "corrigés de DM" and 0 <= n <= 27:
                file_path = f"Maths/DM/Corrections/Correction_DM_{n}.pdf" if n != 27 else f"Maths/DM/Corrections/Correction_DM_16_bis.pdf"
            elif file_type == "exercices" and 0 <= n <= 37:
                file_path = f"Maths/Polys_exos/Corrections/Correction_Chap_{n}.pdf"
            elif file_type == "DS" and 1 <= n <= 8:
                file_path = f"Maths/DS/Sujets/DS_{n}.pdf"
            elif file_type == "corrigés de DS" and 1 <= n <= 8:
                file_path = f"Maths/DS/Corrections/Correction_DS_{n}.pdf"
            elif file_type == "programmes de khôlle" and 0 <= n <= 33:
                file_path = f"Maths/Programmes_de_colle/Semaine_{n}.pdf"

            if file_path and os.path.exists(file_path):
                await interaction.followup.send(file=discord.File(file_path))
            else:
                await interaction.followup.send("Le fichier demandé n'existe pas ou le numéro est incorrect. Veuillez vérifier et réessayer.")

@bot.tree.command(name="modif")
async def modif(interaction: discord.Interaction, kholleur: str, week_offset: int, day: str, new_time: str, new_room: str):
    user_id_temp = str(interaction.user.id)
    user_group = user_groups.get(user_id_temp)
    user_id = str(user_group)
    if not user_group:
        await interaction.response.send_message("Vous n'êtes pas dans un groupe connu.")
        return

    # Trouver toutes les khôlles correspondantes
    matching_kholles = []
    for week, kholles in kholles_table[str(user_group)].items():
        for kholle_id in kholles:
            kholle = kholles_details[str(kholle_id)]
            if kholle['prof'] == kholleur:
                matching_kholles.append((week, kholle_id, kholle))

    if not matching_kholles:
        await interaction.response.send_message(f"Aucune khôlle trouvée avec {kholleur} comme khôlleur.")
        return

    if len(matching_kholles) == 1:
        week, kholle_id, kholle = matching_kholles[0]
    else:
        # Si plusieurs khôlles, on sélectionne la première pour simplifier ici.
        # Dans une vraie implémentation, vous pourriez ajouter un système pour choisir parmi les options.
        week, kholle_id, kholle = matching_kholles[0]

    # Validation de la nouvelle heure
    try:
        if new_time[-1] == 'h':
            new_time = new_time[:-1] + ':00'
        if ':' not in new_time:
            new_time += ':00'
        datetime.strptime(new_time, '%H:%M')  # Vérifier le format
    except ValueError:
        await interaction.response.send_message("Format d'heure invalide. Veuillez réessayer la commande.")
        return

    # Enregistrer la modification
    new_week = int(week) + week_offset
    if user_id not in temp_modifications:
        temp_modifications[user_id] = {}
    temp_modifications[user_id][str(kholle_id)] = {
        'old_week': week,
        'new_week': str(new_week),
        'new_day': day,
        'new_time': new_time,
        'new_room': new_room,
        'id_utilisateur': user_id_temp
    }
    save_temp_modifications(temp_modifications)
    await interaction.response.send_message("Merci beaucoup, le changement a été enregistré.")


@bot.tree.command(name='color', description='Définit ou réinitialise une couleur personnalisée pour un cours.')
@app_commands.describe(nommatiere='Le nom du cours', nomcouleur='La couleur souhaitée ou "reset" pour réinitialiser')
async def color_command(interaction: discord.Interaction, nommatiere: str = None, nomcouleur: str = None):
    user_id = str(interaction.user.id)
    
    if not nommatiere or not nomcouleur:
        await interaction.response.send_message(
            "Utilisation de la commande /color :\n"
            "/color <nommatiere> <nomcouleur> pour définir une couleur personnalisée pour un cours.\n"
            "/color <nommatiere> reset pour réinitialiser la couleur personnalisée.\n\n"
            "* <nommatiere> peut être: physique, maths, info, tipe, anglais, francais, kholle, ds, texte, fond ou arriere (et aussi allemand, espagnol ou arabe)\n"
            "* <nomcouleur> peut être le nom en anglais tout collé, (ex: lightgreen), la valeur hexadécimale (ex: #C3FFB6) ou la valeur rgb (ex: (195,255,182) **sans espaces avec les parenthèses**)\n"
        )
        return

    if nomcouleur.lower() == "reset":
        if user_id in user_colors and nommatiere in user_colors[user_id]:
            del user_colors[user_id][nommatiere]
            save_json('user_colors.json', user_colors)
            await interaction.response.send_message(f"Couleur pour {nommatiere} réinitialisée pour {interaction.user.display_name}.")
        else:
            await interaction.response.send_message(f"Aucune couleur personnalisée trouvée pour {nommatiere} chez {interaction.user.display_name}.")
        return
    
    # Vérifier si la couleur est au format (X,Y,Z)
    match = re.match(r"\((\d+),(\d+),(\d+)\)", nomcouleur)
    if match:
        r, g, b = match.groups()
        nomcouleur = f"#{int(r):02x}{int(g):02x}{int(b):02x}"
    
    if user_id not in user_colors:
        user_colors[user_id] = {}
    user_colors[user_id][nommatiere] = nomcouleur
    save_json('user_colors.json', user_colors)

    # Créer une image carrée de 100x100 pixels de la couleur spécifiée
    color_image_path = f"{user_id}_{nommatiere}_color.png"
    create_color_image(nomcouleur, color_image_path)

    await interaction.response.send_message(
        f"Couleur pour {nommatiere} définie à {nomcouleur} pour {interaction.user.display_name}.",
        file=discord.File(color_image_path)
    )

@bot.tree.command(name='edt', description='Affiche l emploi du temps pour la semaine spécifiée.')
@app_commands.describe(week='Numéro de la semaine', groupe='Numéro du groupe')
async def edt_command(interaction: discord.Interaction, week: str = '0', groupe: str = None):
    # Charger les emplois du temps pour les semaines paires et impaires
    timetable_paire = load_json('b_week_paire.json')
    timetable_impaire = load_json('b_week_impaire.json')
    user_groups = load_json('user_groups.json')
    kholles_table = load_json('kholles_table.json')
    kholles_details = load_json('kholles_details.json')
    liste_ds = load_json('b_liste_ds.json')
    role_specific_courses_paire = load_json('b_role_specific_courses_paire.json')
    role_specific_courses_impaire = load_json('b_role_specific_courses_impaire.json')

    if interaction.channel.id == 1151022058831089726:
        timetable_paire = load_json('week_paire.json')
        timetable_impaire = load_json('week_impaire.json')
        user_groups = load_json('user_groups.json')
        kholles_table = load_json('kholles_table.json')
        kholles_details = load_json('kholles_details.json')
        role_specific_courses_paire = load_json('role_specific_courses_paire.json')
        role_specific_courses_impaire = load_json('role_specific_courses_impaire.json')
        liste_ds = load_json('liste_ds.json')

    # Charger la valeur de "semaine"
    semaine_info = load_json('semaine.json')

    # Charger les couleurs personnalisées
    user_colors = load_json('user_colors.json')    

    try:
        week_num = int(week) + semaine_info['semaine']

        if 1 > week_num or week_num > 32:
            raise ValueError

        if groupe and (1 > int(groupe) or int(groupe) > 15):
            raise ValueError

        user_id = interaction.user.id
        roles = interaction.user.roles

        # Determine the appropriate timetable based on the week number
        if week_num % 2 == 0:
            timetable_week = timetable_paire
        else:
            timetable_week = timetable_impaire

        # Add specific courses for the user's roles
        specific_courses = []
        for role in roles:
            role_id = str(role.id)
            if week_num % 2 == 0 and role_id in role_specific_courses_paire:
                specific_courses.extend(role_specific_courses_paire[role_id])
            elif week_num % 2 == 1 and role_id in role_specific_courses_impaire:
                specific_courses.extend(role_specific_courses_impaire[role_id])
        if str(week_num) in liste_ds:
            specific_courses.extend(liste_ds[str(week_num)])

        image_path = generate_timetable_image(timetable_week, week_num, user_id, specific_courses, groupe)
        await interaction.response.send_message(file=discord.File(image_path))
    except ValueError:
        await interaction.response.send_message(
            "Il faut un numéro de semaine compris entre 1 et 32 et éventuellement un numéro de groupe compris entre 1 et 15.\nPensez à bien entrer des nombres valides avec la commande"
        )

@bot.event
async def on_ready():
    await bot.tree.sync()
    #print(datetime.now().isocalendar()[1])
    print(f'Logged in as {bot.user}')
    send_canteen_reminder.start()

# Fonction pour planifier l'envoi des messages d'anniversaire
@tasks.loop(minutes=1)
async def scheduleBirthdayMessage():
    now = datetime.now()
    if now.weekday() == 6 and now.hour == 14 and now.minute == 0:
        # Vérifie l'image à l'URL principale
        image_url = await check_new_menu("https://www.faidherbe.org/le-menu-de-la-semaine")
        if not image_url:
            # Vérifie l'image à l'autre URL
            image_url = await check_new_menu("https://www.faidherbe.org/menu-semaine-2")
        
        if image_url:
            # Télécharge l'image
            image_bytes = await download_image(image_url)
            
            # Stocke le nom de l'image
            await store_image_name(image_url)
            
            # Envoie le message avec l'image dans le premier salon
            file_1 = File(BytesIO(image_bytes), filename="menu.jpg")
            channel_1 = bot.get_channel(1150106021520490627)
            #await channel_1.send("N'oubliez pas de réserver la cantine <@&1149672709798764564> <@&1148218990888497243> (https://services.ard.fr/fr/espaces-clients/etablissements/lille-faidherbe.html)",file=file_1)

            # Crée un nouveau fichier à partir des mêmes bytes pour le deuxième salon
            file_2 = File(BytesIO(image_bytes), filename="menu.jpg")
            channel_2 = bot.get_channel(1280961335273984100)
            #message_a_pin = await channel_2.send("N'oubliez pas de réserver la cantine <@&1280636143376924694> (https://services.ard.fr/fr/espaces-clients/etablissements/lille-faidherbe.html)",file=file_2)
            #await message_a_pin.pin()
        else:
            # Menu non disponible
            channel = bot.get_channel(1150106021520490627)
            #await channel.send("N'oubliez pas de réserver la cantine <@&1149672709798764564> <@&1148218990888497243> (https://services.ard.fr/fr/espaces-clients/etablissements/lille-faidherbe.html) \nLe menu de la semaine n'est pas encore disponible.")
            channel2 = bot.get_channel(1280961335273984100)
            #await channel2.send("N'oubliez pas de réserver la cantine <@&1280636143376924694> (https://services.ard.fr/fr/espaces-clients/etablissements/lille-faidherbe.html) \nLe menu de la semaine n'est pas encore disponible.")
    today = f"{now.day}/{now.month}"

    # Lire la date du dernier contrôle depuis un fichier
    try:
        with open("lastCheckedDate.txt", "r") as file:
            lastCheckedDate = file.read().strip()
    except FileNotFoundError:
        lastCheckedDate = ""

    if lastCheckedDate != today:
        for personne, anniv_date in anniversaires.items():
            if anniv_date == today:
                # Envoyer un message dans le canal spécifié
                channelId = 1148184150591930440  # Remplacez par l'ID de votre canal
                channel = bot.get_channel(channelId)

                if personne in prenomid:
                    message_content = f"Joyeux anniversaire <@{prenomid[personne]}> ! 🎉"
                else:
                    message_content = f"Joyeux anniversaire {personne} ! 🎉"

                if channel:
                    sent_message = await channel.send(message_content)
                    await sent_message.add_reaction("🎉")
                else:
                    print(f"Le canal avec l'ID {channelId} est introuvable.")

                # Envoyer un message privé
                try:
                    user = await bot.fetch_user("361148433324834826")
                    await user.send(f"C'est l'anniversaire de {personne} aujourd'hui!!! 🎂🎈")
                except discord.HTTPException as e:
                    print(f"Erreur lors de l'envoi du message à : {e}")
        # pour les bizûths:
        for personne, anniv_date in anniversaires2.items():
            if anniv_date == today:
                # Envoyer un message dans le canal spécifié
                channelId = 1280546561629360151  # Remplacez par l'ID de votre canal
                channel = bot.get_channel(channelId)

                if personne in prenomid2:
                    message_content = f"Joyeux anniversaire <@{prenomid2[personne]}> ! 🎉"
                else:
                    message_content = f"Joyeux anniversaire {personne} ! 🎉"

                if channel:
                    sent_message = await channel.send(message_content)
                    await sent_message.add_reaction("🎉")
                else:
                    print(f"Le canal avec l'ID {channelId} est introuvable.")

                # Envoyer un message privé
                try:
                    user = await bot.fetch_user("565204776451833886")
                    await user.send(f"C'est l'anniversaire de {personne} aujourd'hui!!! 🎂🎈")
                except discord.HTTPException as e:
                    print(f"Erreur lors de l'envoi du message à : {e}")

        # Mettre à jour la dernière date testée dans le fichier
        try:
            with open("lastCheckedDate.txt", "w") as file:
                file.write(today)
        except Exception as e:
            print(f"Erreur lors de l'écriture dans le fichier : {e}")
async def check_new_menu(url):
    image_url = await fetch_image_url(url)
    if image_url:
        image_name = get_image_name(image_url)
        if not await is_image_name_stored(image_name):
            return image_url
    return None

async def fetch_image_url(url):
    async with aiohttp.ClientSession() as session:
        async with session.get(url) as response:
            if response.status == 200:
                html = await response.text()
                soup = BeautifulSoup(html, 'html.parser')
                img_tag = soup.find("div", class_="itemBody").find("img")
                if img_tag:
                    return "https://www.faidherbe.org" + img_tag["src"]
    return None

def get_image_name(image_url):
    # Extrait le nom de l'image (jusqu'à 20 caractères)
    image_name = os.path.basename(image_url)
    return image_name[:20]

async def is_image_name_stored(image_name):
    # Vérifie si le nom de l'image est dans le fichier
    if os.path.exists("menu_images.txt"):
        with open("menu_images.txt", 'r') as f:
            stored_names = f.read().splitlines()
            return any(image_name in stored for stored in stored_names)  # Vérifie si une partie correspondante du nom est trouvée
    return False

async def store_image_name(image_name):
    # Charge les noms d'images déjà stockés
    stored_names = []
    if os.path.exists("menu_images.txt"):
        with open("menu_images.txt", 'r') as f:
            stored_names = f.read().splitlines()
    
    # Ajoute le nouveau nom et supprime le plus ancien si nécessaire
    if image_name not in stored_names:  # Assure de ne pas stocker le même nom
        stored_names.append(image_name)
        if len(stored_names) > 2:
            stored_names.pop(0)

        # Écrit les noms mis à jour dans le fichier
        with open("menu_images.txt", 'w') as f:
            f.write("\n".join(stored_names))

async def download_image(url):
    async with aiohttp.ClientSession() as session:
        async with session.get(url) as response:
            if response.status == 200:
                return await response.read()
    return None

# Fonction pour démarrer le bot
@bot.event
async def on_ready():
    print(f'Bot is ready. Logged in as {bot.user}')
    scheduleBirthdayMessage.start()

    
GUILD_ID = 1148184149987954719  # ID du serveur
ROLE_ID = 1336047277294358680   # ID du rôle à ajouter

@bot.event
async def on_member_join(member):
    if member.guild.id == GUILD_ID:
        role = member.guild.get_role(ROLE_ID)
        if role:
            await member.add_roles(role)
            print(f"Rôle {role.name} ajouté à {member.name}.")
        channel = member.guild.get_channel(CHANNEL_ID)
        if channel:
            await channel.send(f" {member.mention} Qui es-tu? Pour des raisons de sécurité, tu n'auras accès au contenu du serveur qu'une fois que l'un des administrateurs t'auras retiré ton rôle Inconnu. @everyone ")

@bot.command(name='anniv')
async def prochains_anniversaires(ctx, nombre_anniversaires: int = 10):
    total_anniversaires = len(anniversaires)
    if ctx.channel.id == 1280961335273984100:
        total_anniversaires = len(anniversaires2)
    if nombre_anniversaires > total_anniversaires:
        await ctx.send(f"Il n'y a que {total_anniversaires} élèves dans la classe!")
        nombre_anniversaires = total_anniversaires  # Ajuster pour afficher le nombre maximum d'anniversaires disponibles

    now = datetime.now()

    # Création de la liste des prochains anniversaires triés par date
    prochains_anniversaires = sorted([
        {'nom': nom, 'date': datetime(now.year, int(date.split('/')[1]), int(date.split('/')[0]))} for nom, date in
        anniversaires.items()], key=lambda x: x['date'])
    
    if ctx.channel.id == 1280961335273984100:
        prochains_anniversaires = sorted([
            {'nom': nom, 'date': datetime(now.year, int(date.split('/')[1]), int(date.split('/')[0]))} for nom, date in
            anniversaires2.items()], key=lambda x: x['date'])

    # Trouver l'index du premier anniversaire à venir
    index_premier_anniversaire = next((i for i, a in enumerate(prochains_anniversaires) if a['date'] >= now), 0)

    # Obtenir les anniversaires à afficher à partir de l'index trouvé
    prochains_anniversaires_circulaire = [
        f"**{i + 1}.** {prenomaff[a['nom']] if a['nom'] in prenomaff else a['nom']}: {a['date'].strftime('%d/%m')}"
        for i, a in enumerate(prochains_anniversaires[index_premier_anniversaire:] + prochains_anniversaires[:index_premier_anniversaire])
    ][:nombre_anniversaires]

    # Création de l'embed des prochains anniversaires
    prochains_anniversaires_embed = discord.Embed(
        title="Prochains Anniversaires",
        colour=discord.Colour.blue(),
        description="\n".join(prochains_anniversaires_circulaire)
    )

    # Envoi de l'embed dans le canal où la commande a été appelée
    await ctx.send(embed=prochains_anniversaires_embed)

@bot.command(name='file')
async def file(ctx):
    if not ctx.channel.id == 1151022058831089726:
        await ctx.send("Commande inaccessible sauf pour les khârrés")
    # Envoyer un message initial pour demander le type de fichier
    msg = await ctx.send("Quel type de fichier souhaitez-vous? Réagissez avec une des réactions ci-dessous :\n" +
                         "\n".join([f"{emoji}: {desc}" for emoji, desc in file_types.items()]))

    # Ajouter les réactions au message
    for emoji in file_types.keys():
        await msg.add_reaction(emoji)

    def check(reaction, user):
        return user == ctx.author and str(reaction.emoji) in file_types

    # Attendre que l'utilisateur réagisse avec une des réactions valides
    try:
        reaction, user = await bot.wait_for('reaction_add', timeout=60.0, check=check)
    except asyncio.TimeoutError:
        await ctx.send("Temps écoulé, veuillez réessayer.")
        return

    file_type = file_types[str(reaction.emoji)]

    # Demander le numéro du fichier souhaité
    if file_type == "formulaires":
        file_path = f"Maths/Formulaires/Derivees.pdf"
        await ctx.send(file=discord.File(file_path))
        file_path = f"Maths/Formulaires/Trigo.pdf"
        await ctx.send(file=discord.File(file_path))
        file_path = f"Maths/Formulaires/DL usuels.pdf"
        await ctx.send(file=discord.File(file_path))
    else:
        await ctx.send(f"Quel est le numéro du fichier {file_type} que vous souhaitez?")

    def check_message(m):
        return m.author == ctx.author and m.channel == ctx.channel and m.content.isdigit()

    try:
        msg = await bot.wait_for('message', timeout=60.0, check=check_message)
    except asyncio.TimeoutError:
        await ctx.send("Temps écoulé, veuillez réessayer.")
        return

    n = int(msg.content)

    # Vérifier si le numéro est dans le dictionnaire des noms de fichiers
    if n in cours_file_names and file_type == "cours":
        file_name = cours_file_names[n]
        # Construire le chemin du fichier
        file_path = f"Maths/Cours/{file_name}.pdf"

        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "DM" and 0 <= n <= 27:
        file_path = f"Maths/DM/Sujets/DM_{n}.pdf"
        if n == 27:
            file_path = f"Maths/DM/Sujets/DM_16_bis.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "corrigés de DM" and 0 <= n <= 27:
        file_path = f"Maths/DM/Corrections/Correction_DM_{n}.pdf"
        if n == 27:
            file_path = f"Maths/DM/Corrections/Correction_DM_16_bis.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "exercices" and 0 <= n <= 34:
        file_path = f"Maths/Polys_exos/Corrections/Correction_Chap_{n}.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "DS" and 1 <= n <= 8:
        file_path = f"Maths/DS/Sujets/DS_{n}.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "corrigés de DS" and 1 <= n <= 8:
        file_path = f"Maths/DS/Corrections/Correction_DS_{n}.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    elif file_type == "programmes de khôlle" and 0 <= n <= 33:
        file_path = f"Maths/Programmes_de_colle/Semaine_{n}.pdf"
        # Vérifier si le fichier existe
        if os.path.exists(file_path):
            await ctx.send(file=discord.File(file_path))
        else:
            await ctx.send("Le fichier demandé n'existe pas. Veuillez vérifier le numéro et réessayer.")
    else:
        await ctx.send("Le type de fichier demandé n'est pas pris en compte: il s'agit très probablement d'un bug. <@330333692008464385>")

@bot.command()
async def aide(ctx):    
    await ctx.send("Aide des commandes des bots :\n"
                   " * `!classement` t'envoie par MP tes classements du premier semestre"
                    "* `!edt` affiche ton emploi du temps actuel\n"
                    "* `!edt <numero_semaine>` affiche ton emploi du temps de la semaine actuelle + numero_semaine (ex: `!edt -1` affiche celui de la semaine précédente)\n"
                    "* `!edt <numero_semaine> <numero_groupe>` affiche l'emploi du temps du groupe numero_groupe à la semaine actuelle + numero_semaine (ex: `!edt 0 2` affiche l'emploi du temps actuel du groupe 2)\n"
                    "\n* `!modif` permet de modifier les horaires des khôlles de son groupe. L'utilisation est détaillée pendant l'utilisation\n"
                    "\n* `!color <nommatiere> <nomcouleur>/reset` permet de personnaliser les couleurs de l'emploi du temps. Tapez `!color` pour plus de détails\n"
                    "\n* `!anniv` affiche les 10 prochains anniversaires (optionnel: `!anniv <nombre>` affiche nombre anniversaires)\n"
                    "\n* `!file` permet de télécharger les fichiers de maths de première année. L'utilisation est détaillée pendant l'utilisation\n\n"
					"**Pour les énoncés:**\n*` !ccinp` -> affiche un énoncé aléatoire du programme de khôlle actuel\n* `!ccinp X` -> affiche un énoncé aléatoire du programme de khôlle dans X programmes (ex: !ccinp -1 pour obtenir un énoncé du programme précédent)\n* `!ccinp all` -> affiche un énoncé aléatoire parmi tous les énoncés\n* `!ccinp analyse` -> affiche un énoncé aléatoire d'un exercice d'analyse\n* `!ccinp algebre` -> affiche un énoncé aléatoire d'un exercice d'algèbre\n* `!ccinp proba` -> affiche un énoncé aléatoire d'un exercice de probabilités\n* `!ccinp seeX` (sans espace) -> affiche l'énoncé n° X\n\n**Pour les corrigés:**\n* `!corrige X` -> affiche le corrigé n° X\n* Ajouter n'importe quelle réaction sous un message contenant un énoncé affiche son corrigé")

@bot.command()
async def classement(ctx):
    user_id = str(ctx.author.id)
    user_data_separe = next((row for row in classement_separe if row[0] == user_id), None)
    user_data_global = next((row for row in classements_globaux if row[0] == user_id), None)

    if not user_data_separe or not user_data_global:
        await ctx.author.send("\u274C Désolé, je n'ai pas trouvé vos classements.")
        return

    # Construire l'embed
    embed = discord.Embed(
        title="Vos Classements",
        description="Voici vos classements dans chaque matière",
        color=discord.Color.blue()
    )

    embed.set_footer(text="Commandé par " + ctx.author.name, icon_url=ctx.author.avatar.url)

    for i, subject in enumerate(subjects):
        sep_classement = user_data_separe[i + 2]
        global_classement = user_data_global[i + 2]
        total = "/10" if user_data_separe[1] == "MPI*" else "/30"

        embed.add_field(
            name=subject,
            value=f"Classement individuel : ||{sep_classement}{total}||\nClassement global : ||{global_classement}/40||",
            inline=False
        )

    # Envoyer l'embed par MP
    try:
        await ctx.author.send(embed=embed)
        await ctx.send("Classement envoyé par MP !")
    except discord.Forbidden:
        await ctx.send("Impossible de vous envoyer un message privé. Activez vos messages privés pour recevoir votre classement.")

@bot.command()
async def classements(ctx):
    user_id = str(ctx.author.id)
    user_data_separe = next((row for row in classement_separe if row[0] == user_id), None)
    user_data_global = next((row for row in classements_globaux if row[0] == user_id), None)

    if not user_data_separe or not user_data_global:
        await ctx.author.send("\u274C Désolé, je n'ai pas trouvé vos classements.")
        return

    # Construire l'embed
    embed = discord.Embed(
        title="Vos Classements",
        description="Voici vos classements dans chaque matière",
        color=discord.Color.blue()
    )

    embed.set_footer(text="Commandé par " + ctx.author.name, icon_url=ctx.author.avatar.url)

    for i, subject in enumerate(subjects):
        sep_classement = user_data_separe[i + 2]
        global_classement = user_data_global[i + 2]
        total = "/10" if user_data_separe[1] == "MPI*" else "/30"

        embed.add_field(
            name=subject,
            value=f"Classement individuel : ||{sep_classement}{total}||\nClassement global : ||{global_classement}/40||",
            inline=False
        )

    # Envoyer l'embed par MP
    try:
        await ctx.author.send(embed=embed)
        await ctx.send("Classement envoyé par MP !")
    except discord.Forbidden:
        await ctx.send("Impossible de vous envoyer un message privé. Activez vos messages privés pour recevoir votre classement.")

@bot.command()
async def modif(ctx):
    user_id_temp = str(ctx.author.id)
    user_group = user_groups.get(user_id_temp)
    user_id = str(user_group)
    if not user_group:
        await ctx.send("Vous n'êtes pas dans un groupe connu.")
        return

    # Demander le nom du khôlleur
    await ctx.send("Vous voulez modifier la khôlle de quel khôlleur?")
    try:
        kholleur_msg = await bot.wait_for('message', check=lambda m: m.author == ctx.author, timeout=60.0)
    except asyncio.TimeoutError:
        await ctx.send("Temps écoulé. Veuillez réessayer la commande.")
        return
    kholleur = kholleur_msg.content

    # Trouver toutes les khôlles correspondantes
    matching_kholles = []
    for week, kholles in kholles_table[str(user_group)].items():
        for kholle_id in kholles:
            kholle = kholles_details[str(kholle_id)]
            if kholle['prof'] == kholleur:
                matching_kholles.append((week, kholle_id, kholle))

    if not matching_kholles:
        await ctx.send(f"Aucune khôlle trouvée avec {kholleur} comme khôlleur.")
        return

    if len(matching_kholles) == 1:
        week, kholle_id, kholle = matching_kholles[0]
    else:
        # Proposer les khôlles trouvées
        kholle_options = "\n".join([f"{chr(65+i)}. Semaine {week}: {kholle['matiere']} - {kholle['jour']} à {kholle['heure']}" for i, (week, _, kholle) in enumerate(matching_kholles)])
        kholle_message = await ctx.send(f"Voici toutes les khôlles ayant {kholleur} comme khôlleur. Cliquez sur la réaction correspondant à l'horaire choisi:\n{kholle_options}")
       
        for i in range(len(matching_kholles)):
            await kholle_message.add_reaction(chr(127462 + i))  # 🇦, 🇧, 🇨, etc.
        def check(reaction, user):
            return user == ctx.author and str(reaction.emoji) in [chr(127462 + i) for i in range(len(matching_kholles))]
        try:
            reaction, _ = await bot.wait_for('reaction_add', timeout=60.0, check=check)
        except asyncio.TimeoutError:
            await ctx.send("Temps écoulé. Veuillez réessayer la commande.")
            return
        selected_index = ord(str(reaction.emoji)) - 127462
        week, kholle_id, kholle = matching_kholles[selected_index]

    # Demander le décalage de semaine
    await ctx.send("De combien de semaines sera décalée la nouvelle khôlle par rapport à l'ancienne? (0 = même semaine, 1 = semaine suivante, -1 = semaine précédente....)")
    try:
        week_offset_msg = await bot.wait_for('message', check=lambda m: m.author == ctx.author, timeout=60.0)
        week_offset = int(week_offset_msg.content)
    except (asyncio.TimeoutError, ValueError):
        await ctx.send("Entrée invalide ou temps écoulé. Veuillez réessayer la commande.")
        return

    # Demander le nouveau jour
    days = ["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"]
    day_emojis = [
        "<:lundi:1266356950132723782>",
        "<:mardi:1266356978452529243>",
        "<:mercredi:1266359650195079229>",
        "<:jeudi:1266359681933381725>",
        "<:vendredi:1266359702674079815>",
        "<:samedi:1266359724425613365>"
    ]
    day_options = "\n".join([f"{day_emojis[i]} {day.capitalize()}" for i, day in enumerate(days)])
    day_message = await ctx.send(f"Quel jour aura lieu la khôlle? Cliquez sur la réaction correspondante:")

    for emoji in day_emojis:
        await day_message.add_reaction(emoji)

    def check(reaction, user):
        return user == ctx.author and str(reaction.emoji) in day_emojis

    try:
        reaction, _ = await bot.wait_for('reaction_add', timeout=60.0, check=check)
    except asyncio.TimeoutError:
        await ctx.send("Temps écoulé. Veuillez réessayer la commande.")
        return

    new_day = days[day_emojis.index(str(reaction.emoji))]

    # Demander la nouvelle heure
    await ctx.send("A quelle heure aura lieu la khôlle? (ex: 14 ou 14h)")
    try:
        new_time_msg = await bot.wait_for('message', check=lambda m: m.author == ctx.author, timeout=60.0)
        new_time = new_time_msg.content
        if new_time[-1] == 'h':
            new_time = new_time[:-1] + ':00'
        if ':' not in new_time:
            new_time += ':00'
        datetime.strptime(new_time, '%H:%M')  # Vérifier le format
    except (asyncio.TimeoutError, ValueError):
        await ctx.send("Format d'heure invalide ou temps écoulé. Veuillez réessayer la commande.")
        return

    # Demander la nouvelle salle
    await ctx.send(f"En quelle salle? La salle prévue était la {kholle['salle']}")
    try:
        new_room_msg = await bot.wait_for('message', check=lambda m: m.author == ctx.author, timeout=60.0)
        new_room = new_room_msg.content
    except asyncio.TimeoutError:
        await ctx.send("Temps écoulé. Veuillez réessayer la commande.")
        return

    # Enregistrer la modification
    new_week = int(week) + week_offset
    if user_id not in temp_modifications:
        temp_modifications[user_id] = {}
    temp_modifications[user_id][str(kholle_id)] = {
        'old_week': week,
        'new_week': str(new_week),
        'new_day': new_day,
        'new_time': new_time,
        'new_room': new_room,
        'id_utilisateur': user_id_temp
    }
    save_temp_modifications(temp_modifications)
    await ctx.send("Merci beaucoup, le changement a été enregistré.")

@bot.command()
async def color(ctx, nommatiere: str = None, nomcouleur: str = None):
    user_id = str(ctx.author.id)
    
    if not nommatiere or not nomcouleur:
        await ctx.send("Utilisation de la commande !color :\n"
                       "!color <nommatiere> <nomcouleur> pour définir une couleur personnalisée pour un cours.\n"
                       "!color <nommatiere> reset pour réinitialiser la couleur personnalisée.\n\n"
                       "* <nommatiere> peut être: physique, maths, info, tipe, anglais, francais, kholle, ds, texte, fond ou arriere (et aussi allemand, espagnol ou arabe)\n"
                       "* <nomcouleur> peut être le nom en anglais tout collé, (ex: lightgreen), la valeur hexadécimale (ex: #C3FFB6) ou la valeur rgb (ex: (195,255,182) **sans espaces avec les parenthèses**)\n")
        return

    if nomcouleur.lower() == "reset":
        if user_id in user_colors and nommatiere in user_colors[user_id]:
            del user_colors[user_id][nommatiere]
            save_json('user_colors.json', user_colors)
            await ctx.send(f"Couleur pour {nommatiere} réinitialisée pour {ctx.author.display_name}.")
        else:
            await ctx.send(f"Aucune couleur personnalisée trouvée pour {nommatiere} chez {ctx.author.display_name}.")
        return
    
    # Vérifier si la couleur est au format (X,Y,Z)
    match = re.match(r"\((\d+),(\d+),(\d+)\)", nomcouleur)
    if match:
        r, g, b = match.groups()
        nomcouleur = f"#{int(r):02x}{int(g):02x}{int(b):02x}"
    
    if user_id not in user_colors:
        user_colors[user_id] = {}
    user_colors[user_id][nommatiere] = nomcouleur
    save_json('user_colors.json', user_colors)

    # Créer une image carrée de 100x100 pixels de la couleur spécifiée
    color_image_path = f"{user_id}_{nommatiere}_color.png"
    create_color_image(nomcouleur, color_image_path)

    await ctx.send(f"Couleur pour {nommatiere} définie à {nomcouleur} pour {ctx.author.display_name}.", file=discord.File(color_image_path))

@bot.command()
async def edt(ctx, week: str = '0', groupe: str = None):
    # Charger les emplois du temps pour les semaines paires et impaires
    if not ctx.channel.id == 1280961335273984100 and not ctx.channel.id == 1151022058831089726:
        await ctx.send("Tu n'es pas dans un channel réservé au bot")
        return
    timetable_paire = load_json('b_week_paire.json')
    timetable_impaire = load_json('b_week_impaire.json')
    user_groups = load_json('user_groups.json')
    kholles_table = load_json('kholles_table.json')
    kholles_details = load_json('kholles_details.json')
    liste_ds = load_json('b_liste_ds.json')
    role_specific_courses_paire = load_json('b_role_specific_courses_paire.json')
    role_specific_courses_impaire = load_json('b_role_specific_courses_impaire.json')

    
    if ctx.channel.id == 1151022058831089726:
        timetable_paire = load_json('week_paire.json')
        timetable_impaire = load_json('week_impaire.json')
        user_groups = load_json('user_groups.json')
        kholles_table = load_json('kholles_table.json')
        kholles_details = load_json('kholles_details.json')

        role_specific_courses_paire = load_json('role_specific_courses_paire.json')
        role_specific_courses_impaire = load_json('role_specific_courses_impaire.json')
        liste_ds = load_json('liste_ds.json')

    # Charger la valeur de "semaine"
    semaine_info = load_json('semaine.json')

    # Charger les couleurs personnalisées
    user_colors = load_json('user_colors.json')    

    try:
        week_num = int(week) + semaine_info['semaine']

        if 1 > week_num or week_num > 32:
            print("semaine",week_num)
            temp = int("SAlut") # Déclenche l'exception 

        if groupe:
            if not ((1 <= int(groupe) and int(groupe) <= 15) or (101 <= int(groupe) and int(groupe) <= 116)):
            	print("groupe",groupe)
            else:
                print("bjr")
#temp = int("SAlut") # Déclenche l'exception 

        user_id = ctx.author.id
        roles = ctx.author.roles

        # Determine the appropriate timetable based on the week number
        if week_num % 2 == 0:
            timetable_week = timetable_paire
        else:
            timetable_week = timetable_impaire

        # Add specific courses for the user's roles
        specific_courses = []
        for role in roles:
            role_id = str(role.id)
            if week_num % 2 == 0 and role_id in role_specific_courses_paire:
                specific_courses.extend(role_specific_courses_paire[role_id])
            elif week_num % 2 == 1 and role_id in role_specific_courses_impaire:
                specific_courses.extend(role_specific_courses_impaire[role_id])
        print("presque ok",groupe)
        if str(week_num) in liste_ds:
            specific_courses.extend(liste_ds[str(week_num)])

        image_path = generate_timetable_image(timetable_week, week_num, user_id, specific_courses, groupe)
        await ctx.send(file=discord.File(image_path))
    except ValueError:
        await ctx.send(ValueError)
        await ctx.send("Il faut un numéro de semaine compris entre 1 et 32 et éventuellement un numéro de groupe compris entre 1 et 15.\nPensez à bien entrer des nombres valides avec la commande")

def create_color_image(color, path):
    size = (100, 100)
    image = Image.new("RGB", size, color)
    image.save(path)

def get_modified_kholle(kholle_id, kholle_details, user_modifications, week):
    if kholle_id in user_modifications:
        mod = user_modifications[kholle_id]
        if mod['new_week'] == str(week):
            return {
                'matiere': kholle_details['matiere'],
                'prof': kholle_details['prof'],
                'duree': kholle_details['duree'],
                'jour': mod['new_day'],
                'heure': mod['new_time'],
                'salle': mod['new_room']
            }
    return None 

def generate_timetable_image(timetable_week, week, user_id, specific_courses, groupe):
    print("ENTRE FCT")
    timetable_paire = load_json('week_paire.json')
    timetable_impaire = load_json('week_impaire.json')

    # Charger la valeur de "semaine"
    semaine_info = load_json('semaine.json')

    # Charger les couleurs personnalisées
    user_colors = load_json('user_colors.json')

    # Charger les groupes d'utilisateurs
    user_groups = load_json('user_groups.json')

    # Charger les khôlles
    kholles_table = load_json('kholles_table.json')
    kholles_details = load_json('kholles_details.json')
    
    role_specific_courses_paire = load_json('role_specific_courses_paire.json')
    role_specific_courses_impaire = load_json('role_specific_courses_impaire.json')

    liste_ds = load_json('liste_ds.json')
    # Recharger les modifications temporaires à chaque appel de cette fonction
    temp_modifications = load_temp_modifications()
    # Dimensions de l'image
    width = 1300  # Augmenté pour inclure le compteur des heures
    height = 800
    
    user_id_str = str(user_id)
    background_color = user_colors.get(user_id_str, {}).get("arriere", "#FFFFFF")  # Default to white
    text_color = user_colors.get(user_id_str, {}).get("texte", "#000000")  # black
    day_color = user_colors.get(user_id_str, {}).get("fond", "#D0D0D0")  # lightgray
    
    # Crée une image avec la couleur de fond personnalisée
    image = Image.new("RGB", (width, height), background_color)
    draw = ImageDraw.Draw(image)
    
    # Police à utiliser
    try:
        font = ImageFont.truetype("arial.ttf", 18)
    except IOError:
        font = ImageFont.load_default()

    # Définition des dimensions des cases
    margin = 20
    hour_margin = 50  # Espace pour le compteur des heures
    day_width = (width - 2 * margin - hour_margin) // 6
    hour_height = (height - 2 * margin) // 12

    # Dessiner les heures sur le côté gauche
    print("apres init")
    for hour in range(8, 20):
        y = margin + (hour - 8) * hour_height + 25
        draw.text((margin, y), f"{hour}:00", fill=text_color, font=font)

    # Dessiner les jours
    days = ["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"]
    for i, day in enumerate(days):
        x = margin + hour_margin + i * day_width
        draw.rectangle([x, margin, x + day_width, height - margin], fill=day_color)
        
        # Centrer le nom du jour
        bbox = draw.textbbox((0, 0), day.capitalize(), font=font)
        w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
        draw.text((x + (day_width - w) / 2, margin + 5), day.capitalize(), fill=text_color, font=font)
        print("avant_cours")
        # Dessiner les cours
        if day in timetable_week:
            courses = timetable_week[day]
            for course, duration, teacher, start_time in courses:
                start_hour, start_minute = map(int, start_time.split(':'))
                current_hour = start_hour - 8  # On suppose que les cours commencent à 8h
                y = margin + current_hour * hour_height + 25
                course_height = hour_height * duration
                
                # Obtenir le paramètre général pour le cours
                course_param = course_parameters.get(course, course)
                course_color = user_colors.get(user_id_str, {}).get(course_param, course_colors.get(course_param, "#FFFFFF"))  # Default to white if course not found
                
                draw.rectangle([x, y, x + day_width, y + course_height], fill=course_color)
                
                # Centrer le nom du cours, le professeur et la salle
                course_text = f"{course}\n{teacher}"
                text_lines = course_text.split('\n')

                # Get the bounding box for a single character to determine line height
                bbox = font.getbbox('A')
                line_height = bbox[3] - bbox[1]

                text_color_temp = text_color
                if course_color == "#000000" or course_color == "black":  # black
                    text_color_temp = "#FFFFFF"  # white
                
                # Ajustement de la position verticale
                total_text_height = line_height * len(text_lines)
                for j, line in enumerate(text_lines):
                    bbox = draw.textbbox((0, 0), line, font=font)
                    w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
                    y_offset = y + (course_height - total_text_height) / 2 + j * line_height
                    draw.text((x + (day_width - w) / 2, y_offset), line, fill=text_color_temp, font=font, align="center")

    # Ajouter les khôlles de l'utilisateur
    print("arrive_groupe",groupe)
    user_id_str_temp = str(user_id)
    user_group = user_groups.get(user_id_str_temp)
    if groupe:
        print("SALUT")
        user_group = groupe
    user_id_str = str(user_group)
    print("user_group=",user_group)
    if user_group:
        print("entrer if")
        kholles_week = kholles_table.get(str(user_group), {}).get(str(week), [])
        user_modifications = temp_modifications.get("user_id_str", {})
        
        # Traiter toutes les khôlles (originales et modifiées)
        processed_kholles = set()
        
        # Traiter d'abord les khôlles déplacées vers cette semaine
        print("entrer for 1")
        for kholle_id, mod in user_modifications.items():
            if mod['new_week'] == str(week):
                kholle_details = kholles_details.get(str(kholle_id))
                if kholle_details:
                    modified_kholle = get_modified_kholle(str(kholle_id), kholle_details, user_modifications, week)
                    if modified_kholle:
                        draw_kholle(draw, modified_kholle, modified_kholle['jour'], modified_kholle['heure'], modified_kholle['salle'], user_id_str_temp, days, margin, hour_margin, day_width, hour_height, text_color, line_height, font)
                        processed_kholles.add(kholle_id)

        # Traiter ensuite les khôlles normales de cette semaine qui n'ont pas été modifiées
        print("entrer for 2",kholles_week,user_id_str_temp)
        for kholle_id in kholles_week:
            if kholle_id not in processed_kholles:
                kholle_details = kholles_details.get(str(kholle_id))
                if kholle_details:
                    modified_kholle = get_modified_kholle(str(kholle_id), kholle_details, user_modifications, week)
                    if modified_kholle:
                        print("modifiee")
                        draw_kholle(draw, modified_kholle, modified_kholle['jour'], modified_kholle['heure'], modified_kholle['salle'], user_id_str_temp, days, margin, hour_margin, day_width, hour_height, text_color, line_height, font)
                    elif str(kholle_id) in user_modifications:
                        print("a ete modifiee")
                        mod = user_modifications[str(kholle_id)]
                        if mod['old_week'] != str(week):
                            draw_kholle(draw, kholle_details, kholle_details['jour'], kholle_details['heure'], kholle_details['salle'], user_id_str_temp, days, margin, hour_margin, day_width, hour_height, text_color, line_height, font)
                    else:
                        print("sinon")
                        draw_kholle(draw, kholle_details, kholle_details['jour'], kholle_details['heure'], kholle_details['salle'], user_id_str_temp, days, margin, hour_margin, day_width, hour_height, text_color, line_height, font)

    # Ajouter les matières spécifiques selon les rôles de l'utilisateur
    print("sortir if")
    for specific_course in specific_courses:
        course, day, duration, teacher, start_time = specific_course
        jour = day.lower()
        if jour in days:
            x = margin + hour_margin + days.index(jour) * day_width
            start_hour, start_minute = map(int, start_time.split(':'))
            current_hour = start_hour - 8  # On suppose que les cours commencent à 8h
            y = margin + current_hour * hour_height + 25
            course_height = hour_height * duration

            course_param = course_parameters.get(course, course)
            course_color = user_colors.get(user_id_str, {}).get(course_param, course_colors.get(course_param, "#FFFFFF"))

            draw.rectangle([x, y, x + day_width, y + course_height], fill=course_color)

            course_text = f"{course}\n{teacher}"
            text_lines = course_text.split('\n')
            text_color_temp = text_color
            if course_color == "#000000":  # black
                text_color_temp = "#FFFFFF"  # white

            for j, line in enumerate(text_lines):
                # Obtenir les dimensions de la ligne de texte
                bbox = draw.textbbox((0, 0), line, font=font)
                w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]

                # Calculer la position de la ligne de texte
                y_offset = y + (course_height - line_height * len(text_lines)) / 2 + j * line_height
                x_offset = x + (day_width - w) / 2

                # Dessiner la ligne de texte centrée
                draw.text((x_offset, y_offset), line, fill=text_color_temp, font=font, align="center")

    # Ajouter la semaine en haut de l'image
    semaine_text = f"Semaine {week} - Groupe {user_group}"
    bbox = draw.textbbox((0, 0), semaine_text, font=font)
    w = bbox[2] - bbox[0]
    h = bbox[3] - bbox[1]
    draw.text(((width - w) / 2, 0), semaine_text, fill=text_color, font=font)

    # Chemin de sauvegarde de l'image
    output_dir = 'emploi'
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    filename = f"emploi_du_temps_{user_id}_{week}.png"
    image_path = os.path.join(output_dir, filename)
    
    image.save(image_path)

    return image_path

def draw_kholle(draw, kholle_details, jour, start_time, salle, user_id_str, days, margin, hour_margin, day_width, hour_height, text_color, line_height, font):
    print("entre fct")
    if jour in days:
        print("jour")
        x = margin + hour_margin + days.index(jour) * day_width
        print("L1",start_time)
        start_hour, start_minute = map(int, start_time.split(':'))
        print("L2")
        current_hour = start_hour - 8
        print("L3")
        y = margin + current_hour * hour_height + 25
        print("L4")
        course_height = hour_height * kholle_details['duree']
        print("1 bloc",user_id_str)
       
        course_color = user_colors.get(user_id_str, {}).get("kholle", course_colors.get(f"kholle", "#000000"))
        print("12 bloc",day_width,course_height,course_color)
        draw.rectangle([x, y, x + day_width, y + course_height], fill=course_color)
        print("2 bloc")
       
        course_text = f"Khôlle: {kholle_details['matiere']}\n{kholle_details['prof']}\n{salle}"
        text_lines = course_text.split('\n')
        text_color_temp = text_color
        if course_color == "#000000":  # black
            text_color_temp = "#FFFFFF"  # white
       
        print("3 bloc")
        total_text_height = line_height * len(text_lines)
        for j, line in enumerate(text_lines):
            print("dans for")
            bbox = draw.textbbox((0, 0), line, font=font)
            w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
            y_offset = y + (course_height - total_text_height) / 2 + j * line_height
            draw.text((x + (day_width - w) / 2, y_offset), line, fill=text_color_temp, font=font, align="center")
        print("fin for")

@bot.command(name="devoir_add", help="Ajoute un devoir à une semaine donnée.")
async def devoir_add(ctx):
    # Demander la matière
    await ctx.send("Choisissez la matière (Maths, Physique, Info, Français, Anglais, TIPE) :")
    try:
        matiere_msg = await bot.wait_for('message', timeout=60.0, check=lambda m: m.author == ctx.author and m.channel == ctx.channel)
        matiere = matiere_msg.content.lower()
        
        if matiere not in ["maths", "physique", "info", "français", "anglais", "tipe"]:
            await ctx.send("Matière invalide.")
            return

        # Demander le jour
        await ctx.send("Choisissez le jour de la semaine (lundi, mardi, mercredi, jeudi, vendredi) :")
        jour_msg = await bot.wait_for('message', timeout=60.0, check=lambda m: m.author == ctx.author and m.channel == ctx.channel)
        jour = jour_msg.content.lower()

        if jour not in ["lundi", "mardi", "mercredi", "jeudi", "vendredi"]:
            await ctx.send("Jour invalide.")
            return

        # Demander la semaine
        await ctx.send("Semaine où le devoir est dû (0 pour cette semaine, 1 pour la suivante, etc.) :")
        semaine_msg = await bot.wait_for('message', timeout=60.0, check=lambda m: m.author == ctx.author and m.channel == ctx.channel)
        try:
            semaine = int(semaine_msg.content)
        except ValueError:
            await ctx.send("Semaine invalide.")
            return

        # Demander le contenu
        await ctx.send("Contenu du devoir (ex: DM, exercice, etc.) :")
        contenu_msg = await bot.wait_for('message', timeout=60.0, check=lambda m: m.author == ctx.author and m.channel == ctx.channel)
        contenu = contenu_msg.content

        semaine_actuelle = load_current_week()
        semaine_demandee = semaine_actuelle + semaine
        
        devoirs = load_devoirs_b()
        if ctx.channel.id == 1151022058831089726:
            devoirs = load_devoirs()

        # Ajouter un nouveau devoir avec un ID unique
        devoir_id = generate_id()
        devoir = {
            "id": devoir_id,
            "matiere": matiere,
            "semaine": semaine_demandee,
            "jour": jour,
            "contenu": contenu
        }

        # Stocker le devoir dans la base de données
        if str(semaine_demandee) not in devoirs:
            devoirs[str(semaine_demandee)] = []
        devoirs[str(semaine_demandee)].append(devoir)
        if ctx.channel.id == 1151022058831089726:
            save_devoirs(devoirs)
        else:
            save_devoirs_b(devoirs)

        await interaction.response.send_message(f"Devoir de {matiere.value} ({contenu}) ajouté avec succès pour le {jour.lower()} de la semaine {semaine_demandee} ! ID: {devoir_id}")

    except asyncio.TimeoutError:
        await ctx.send("Vous avez mis trop de temps pour répondre.")

@bot.command(name="devoirs", help="Affiche les devoirs pour la semaine actuelle ou une semaine donnée.")
async def devoirs(ctx, semaine: int = 0):
    semaine_actuelle = load_current_week()
    semaine_demandee = semaine_actuelle + semaine
    devoirs = load_devoirs_b()
    if ctx.channel.id == 1151022058831089726:
        devoirs = load_devoirs()

    # Récupérer les devoirs de la semaine demandée
    semaine_str = str(semaine_demandee)
    if semaine_str not in devoirs or len(devoirs[semaine_str]) == 0:
        await ctx.send(f"Aucun devoir trouvé pour la semaine {semaine_demandee}.")
        return

    # Trier les devoirs par jour
    jours_ordre = ["lundi", "mardi", "mercredi", "jeudi", "vendredi"]
    devoirs_semaine = sorted(devoirs[semaine_str], key=lambda x: jours_ordre.index(x["jour"]))

    # Construire le message de réponse
    response_message = f"Devoirs pour la semaine {semaine_demandee} :\n"
    for devoir in devoirs_semaine:
        response_message += f"- {devoir['jour'].capitalize()}: {devoir['matiere']} - {devoir['contenu']} (ID: {devoir['id']})\n"

    await ctx.send(response_message)

@bot.command(name="devoir_remove", help="Supprime un devoir avec l'ID donné.")
async def devoir_remove(ctx, devoir_id: str):
    devoirs = load_devoirs_b()
    if ctx.channel.id == 1151022058831089726:
        devoirs = load_devoirs()
    removed = False

    # Chercher et supprimer le devoir dans toutes les semaines
    for semaine in devoirs:
        for devoir in devoirs[semaine]:
            if devoir["id"] == devoir_id:
                devoirs[semaine].remove(devoir)
                removed = True
                break
        if removed:
            if ctx.channel.id == 1151022058831089726:
                save_devoirs(devoirs)
            else:
                save_devoirs_b(devoirs)
            await ctx.send(f"Le devoir avec l'ID {devoir_id} a été supprimé avec succès.")
            return

    await ctx.send(f"Aucun devoir trouvé avec l'ID {devoir_id}.")

# Charger la liste des utilisateurs pour MP
def load_mp_users():
    with open('mp_users.json', 'r') as file:
        return json.load(file)



def save_birthday(member_display_name, date_str, birthday_file="birthdays.json"):
    # Vérifier si le fichier existe, sinon créer un dictionnaire vide
    if os.path.exists(birthday_file):
        with open(birthday_file, 'r') as file:
            birthdays = json.load(file)
    else:
        birthdays = {}

    # Ajouter ou mettre à jour l'entrée avec le nom affiché et la date
    birthdays[member_display_name] = date_str

    # Écrire le dictionnaire mis à jour dans le fichier JSON
    with open(birthday_file, 'w') as file:
        json.dump(birthdays, file, indent=4)

def save_member_info(member_id, member_display_name, info_file="member_info.json"):
    # Vérifier si le fichier existe, sinon créer un dictionnaire vide
    if os.path.exists(info_file):
        with open(info_file, 'r') as file:
            member_info = json.load(file)
    else:
        member_info = {}

    # Ajouter ou mettre à jour l'entrée avec l'ID Discord et le nom affiché
    member_info[str(member_id)] = member_display_name

    # Écrire le dictionnaire mis à jour dans le fichier JSON
    with open(info_file, 'w') as file:
        json.dump(member_info, file, indent=4)
# Ajoutez une liste pour suivre les tâches
active_tasks = []
# Commande pour les admins: !date_anniv
@bot.command()
@commands.has_permissions(administrator=True)
async def date_anniv(ctx):
    global active_tasks  # Référence à la liste des tâches actives

    role_id = 1280636143376924694  # ID du rôle ciblé

    async def demander_date_naissance(member):
        try:
            def check(m):
                return m.author == member and isinstance(m.channel, discord.DMChannel)

            # Demander la date de naissance et vérifier la validité
            while True:
                await member.send("Bonjour, je me permet de te déranger pour ajouter une nouvelle commande à ce bot: annonçant les anniversaires. Quel est ton anniversaire ? (Format attendu : jour/mois, ex : 30/10 pour le 30 octobre)")

                date_msg = await bot.wait_for('message', check=check)
                date_str = date_msg.content

                # Vérifier le format de la date
                if re.match(r'^\d{1,2}/\d{1,2}$', date_str):
                    # Séparer jour et mois et enlever les zéros inutiles
                    jour, mois = date_str.split('/')
                    jour = str(int(jour))  # Convertir en entier et reconvertir en chaîne pour enlever les zéros inutiles
                    mois = str(int(mois))
                    date_str = f"{jour}/{mois}"
                    break  # Format valide et zéros enlevés, on sort de la boucle
                else:
                    await member.send("Format invalide. Veuillez entrer la date au format jour/mois.")

            # Enregistrer la date de naissance
            save_birthday(member.display_name, date_str)
            save_member_info(member.id, member.display_name)

            await member.send(f"Merci, ta date de naissance ({date_str}) a bien été enregistrée! Si tu t'es trompé, envoie un MP ou un message en mentionnant Pierre (Shinichi Kudo)")

        except Exception as e:
            print(f"Erreur lors de l'envoi du message à {member.name}: {e}")

    # Nettoyer toutes les tâches actives avant d'envoyer de nouveaux messages
    for task in active_tasks:
        if not task.done():
            task.cancel()

    active_tasks = []  # Réinitialiser la liste des tâches

    # Envoyer un message dans le channel indiquant le début de l'envoi des messages
    await ctx.send("Je vais demander la date de naissance à tous les élèves ayant le rôle ciblé.")

    # Créer une tâche pour chaque membre avec le rôle spécifié
    for member in ctx.guild.members:
        print("salut",member)
        if not member.bot and discord.utils.get(member.roles, id=role_id):
            task = asyncio.create_task(demander_date_naissance(member))  # Créer une nouvelle tâche
            active_tasks.append(task)
            await asyncio.sleep(1)  # Attendre 1 seconde entre chaque envoi

    # Exécuter toutes les tâches simultanément
    await asyncio.gather(*active_tasks)

bot.run(TOKEN)
