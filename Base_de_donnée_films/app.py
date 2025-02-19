from flask import Flask, render_template, request, redirect, url_for, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func  # Ajoutez ceci pour importer func depuis SQLAlchemy
import requests
from cachelib.simple import SimpleCache
import os
from bs4 import BeautifulSoup
from datetime import datetime
import json
from collections import defaultdict
import io
import codecs

app = Flask(__name__)

TOP_ACTORS_FILE = 'top_actors.txt'

# Configuration de la base de données SQLite
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///movies.db'
db = SQLAlchemy(app)
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',
    'Referer': 'https://www.example.com'
}
destination_directory = "C:/Users/mrpie/Pictures/Wallpapers"
cache = SimpleCache(default_timeout=3600)  # Cache avec une expiration de 1 heure
AFFICHES_FOLDER = 'C:/Users/mrpie/Pictures/Affiches'
# Remplacez 'YOUR_TMDB_API_KEY' par votre clé API TMDb
TMDB_API_KEY = '9adb056ee9b7154d58ac2c88741d5638'

# Créez un modèle pour la table des films
class Movie(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(255), nullable=False)
    overview = db.Column(db.Text)
    poster_path = db.Column(db.String(255))
    actors = db.Column(db.String(255))  # Champ pour stocker la liste des acteurs
    director = db.Column(db.String(255))  # Champ pour le réalisateur
    release_date = db.Column(db.String(10))  # Champ pour la date de sortie (au format 'YYYY-MM-DD')
    watched_date  = db.Column(db.Date)
    identifiant  = db.Column(db.String(255))

# Cette partie doit être dans le contexte de l'application
with app.app_context():
    db.create_all()

def normalize_actor_name(name):
    """Normalise les noms d'acteurs en supprimant les espaces en trop et en les mettant en minuscule."""
    return name.strip().lower()

def wallpapers(page_url):
    response = requests.get(page_url, headers=headers)
    if response.status_code == 200:
        page_content = response.text

        # Analysez le code source avec BeautifulSoup
        soup = BeautifulSoup(page_content, 'html.parser')

        # Trouvez toutes les balises `p` avec la classe `flex`
        image_paragraphs = soup.find_all('p', class_='flex')

        # Dossier de destination pour enregistrer les images
        download_folder = 'C:/Users/mrpie/Pictures/Wallpapers/'
        for paragraph in image_paragraphs:
            # Trouvez le lien de l'image dans le paragraphe
            image_link = paragraph.find('a', href=True)

            if image_link:
                image_url = image_link['href']
                print(image_url)
                # Enregistrez l'image localement
                local_image_path = os.path.join(download_folder, image_url.split('/')[-1])

                # Téléchargez l'image
                image_response = requests.get(image_url)

                if image_response.status_code == 200:
                    with open(local_image_path, 'wb') as image_file:
                        image_file.write(image_response.content)

                    print(f"Image enregistrée avec succès sous : {local_image_path}")
                else:
                    print("Impossible de télécharger l'image. Code de statut :", image_response.status_code)
    else:
        print("Impossible de récupérer la page. Code de statut :", response.status_code)

def get_movie_duration(movie_id):
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={TMDB_API_KEY}'
    response = requests.get(url)
    data = response.json()
    print(data.get('runtime'))
    return data.get('runtime') or 1  # Durée en minutes, 0 si non disponible

def calculate_total_duration(movie_ids):
    durations = [get_movie_duration(movie_id) for movie_id in movie_ids]
    total_duration = sum(durations)
    return total_duration

def wallpapers_remove(page_url):
    response = requests.get(page_url, headers=headers)
    if response.status_code == 200:
        page_content = response.text

        # Analysez le code source avec BeautifulSoup
        soup = BeautifulSoup(page_content, 'html.parser')

        # Trouvez toutes les balises `p` avec la classe `flex`
        image_paragraphs = soup.find_all('p', class_='flex')

        # Dossier de destination pour enregistrer les images
        download_folder = 'C:/Users/mrpie/Pictures/Wallpapers/'
        for paragraph in image_paragraphs:
            try:
                # Trouvez le lien de l'image dans le paragraphe
                image_link = paragraph.find('a', href=True)

                if image_link:
                    image_url = image_link['href']

                    # Enregistrez l'image localement
                    local_image_path = os.path.join(download_folder, image_url.split('/')[-1])
                    os.remove(local_image_path)
            except Exception as e:
                print(f"Une erreur s'est produite : {e}")
    else:
        print("Impossible de récupérer la page. Code de statut :", response.status_code)

def get_actor_movies(actor_name):
    # Étape 1 : Recherche de l'acteur par son nom
    search_actor_url = f'https://api.themoviedb.org/3/search/person?api_key={TMDB_API_KEY}&query={actor_name}'
    response = requests.get(search_actor_url)
    actor_data = response.json()

    if actor_data.get('results'):
        # Prenez le premier acteur de la liste (ou l'acteur le plus pertinent)
        actor_id = actor_data['results'][0]['id']

        # Étape 2 : Obtenir la liste des films de l'acteur
        actor_movies_url = f'https://api.themoviedb.org/3/person/{actor_id}/movie_credits?api_key={TMDB_API_KEY}'
        response = requests.get(actor_movies_url)
        actor_movies_data = response.json()

        if 'cast' in actor_movies_data:
            actor_movies = actor_movies_data['cast']
            return actor_movies

    return []

def get_movie_details(movie_id):
    # Vérifiez si les détails du film sont déjà en cache
    cached_data = cache.get(f'movie_{movie_id}')
    if cached_data:
        return cached_data

    # Si les détails ne sont pas en cache, effectuez une requête à l'API TMDb
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={TMDB_API_KEY}'
    response = requests.get(url)
    data = response.json()

    # Stockez les données en cache pour une utilisation future
    cache.set(f'movie_{movie_id}', data)

    return data

# Fonction pour compter le nombre de films pour un acteur donné
def count_actor_movies(actor_name):
    normalized_name = normalize_actor_name(actor_name)
    return Movie.query.filter(func.lower(Movie.actors).like(f"%{normalized_name}%")).count()

def load_top_actors_from_file():
    top_actors = []
    try:
        with open(TOP_ACTORS_FILE, 'r', encoding='utf-8') as file:  # Ajout de encoding='utf-8'
            for line in file:
                actor, count = line.strip().split(': ')
                top_actors.append({'actor': actor, 'count': int(count)})
    except FileNotFoundError:
        pass  # Gérer si le fichier n'existe pas encore
    return top_actors

def save_top_actors_to_file(top_actors):
    with open(TOP_ACTORS_FILE, 'w', encoding='utf-8') as file:  # Ajout de encoding='utf-8'
        for actor in top_actors:
            file.write(f"{actor['actor']}: {actor['count']}\n")


# Fonction pour afficher la liste des films
@app.route('/')
def index():
    movies = Movie.query.all()
    return render_template('index.html', movies=movies)

# Fonction pour obtenir les acteurs d'un film par son ID
@app.route('/actors/<int:movie_id>')
def show_actors(movie_id):
    movie = Movie.query.get(movie_id)
    if movie:
        actors = [{'name': actor.strip(), 'count': count_actor_movies(actor.strip())} for actor in movie.actors.split(',')]

        # Chargez les 10 acteurs les plus vus depuis le fichier
        top_actors = load_top_actors_from_file()

        # Dictionnaire pour vérifier les acteurs déjà présents dans les top acteurs
        top_actors_dict = {normalize_actor_name(actor['actor']): actor for actor in top_actors}

        for actor in actors:
            normalized_name = normalize_actor_name(actor['name'])
            if normalized_name in top_actors_dict:
                # L'acteur est déjà dans la liste des top acteurs, mettre à jour le nombre de films
                top_actors_dict[normalized_name]['count'] = max(top_actors_dict[normalized_name]['count'], actor['count'])
            else:
                if len(top_actors) < 50:
                    # Ajouter un nouvel acteur si la liste n'est pas encore pleine
                    top_actors.append({'actor': actor['name'], 'count': actor['count']})
                    top_actors_dict[normalized_name] = top_actors[-1]
                else:
                    # Si la liste est pleine, remplacer l'acteur avec le moins de films
                    min_count_actor = min(top_actors, key=lambda x: x['count'])
                    if actor['count'] > min_count_actor['count']:
                        top_actors.remove(min_count_actor)
                        top_actors.append({'actor': actor['name'], 'count': actor['count']})
                        del top_actors_dict[normalize_actor_name(min_count_actor['actor'])]
                        top_actors_dict[normalized_name] = top_actors[-1]

        # Enregistrez les 10 acteurs les plus vus dans le fichier
        save_top_actors_to_file(top_actors)

        # Marquez les acteurs comme faisant partie des 10 acteurs les plus vus
        for actor in actors:
            actor['in_top_actors'] = normalize_actor_name(actor['name']) in top_actors_dict

        return render_template('actor.html', actors=actors, titre=movie.title, date_vu=movie.watched_date, directeur=movie.director, image=movie.poster_path, synopsis=movie.overview, date=movie.release_date, identifiant=movie.id)
    else:
        return "Film non trouvé"
       
@app.route('/actor_films/<actor_name>')
def actor_films(actor_name):
    # Recherchez tous les films dans lesquels cet acteur joue
    movies = Movie.query.filter(Movie.actors.like(f"%{actor_name}%")).all()
    return render_template('actor_films.html', actor_name=actor_name, movies=movies)

@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == 'POST':
        search_query = request.form['search_query']

        # Utilisez l'API TMDb pour rechercher des films
        url = f'https://api.themoviedb.org/3/search/movie?api_key={TMDB_API_KEY}&query={search_query}'
        response = requests.get(url)
        data = response.json()
        results = data.get('results', [])

        detailed_results = []

        for result in results:
            movie_id = result.get('id')
            movie_data = get_movie_details(movie_id)

            # Ajoutez les informations détaillées au résultat
            result['release_date'] = movie_data.get('release_date')
            result['poster_path'] = movie_data.get('poster_path')

            detailed_results.append(result)

        return render_template('search.html', results=detailed_results)
    else:
        return render_template('search.html', results=[])
    
# Fonction pour ajouter un film à la base de données
@app.route('/add_movie', methods=['POST'])
def add_movie():
    movie_id = request.form['movie_id']
    user_date = request.form['watched_date']
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={TMDB_API_KEY}&append_to_response=credits'
    response = requests.get(url)
    data = response.json()
    title = data.get('title')
    if user_date == '': watched_date=None
    else: watched_date = datetime.strptime(user_date, '%Y-%m-%d').date()
    overview = data.get('overview')
    poster_path = data.get('poster_path')
    director = None
    for crew_member in data["credits"]["crew"]:
        if crew_member.get('job') == 'Director':
            director = crew_member.get('name')
            break  # Sortez de la boucle une fois que le réalisateur est trouvé
    release_date = data.get('release_date')  # Assurez-vous de remplacer 'release_date' par le nom correct de la clé
    
    # Récupérez les noms des acteurs du film depuis les données de crédits de l'API TMDb
    actors_data = data.get('credits', {}).get('cast', [])
    actor_names = [actor_data.get('name') for actor_data in actors_data]
    
    # Créez un nouveau film avec la liste des acteurs
    movie = Movie(title=title, overview=overview, poster_path=poster_path, actors=", ".join(actor_names), director=director, release_date=release_date,watched_date=watched_date,identifiant=movie_id)
    
    # Ajoutez le film à la base de données
    db.session.add(movie)
    db.session.commit()

    if poster_path:
        poster_url = f'https://image.tmdb.org/t/p/original{poster_path}'
        poster_response = requests.get(poster_url)
        if poster_response.status_code == 200:
            # Créez le chemin complet du fichier d'affiche sur votre ordinateur
            poster_filename = os.path.join(AFFICHES_FOLDER, f'{movie_id}.jpg')
            with open(poster_filename, 'wb') as poster_file:
                poster_file.write(poster_response.content)

            # Enregistrez le chemin du fichier d'affiche dans la base de données
        else:
            return "Impossible de télécharger l'affiche du film"
    titre=title.lower().replace(" ", "-")

    url= "https://www.themoviedb.org/movie/"+str(movie_id)+"-"+titre+"/images/backdrops"
    wallpapers(url)
    return redirect(url_for('index'))

@app.route('/delete_movie/<int:movie_id>', methods=['GET', 'POST'])
def delete_movie(movie_id):
    movie = Movie.query.get(movie_id)
    if movie:
        titre=movie.title.lower().replace(" ", "-")
        url= "https://www.themoviedb.org/movie/"+str(movie.identifiant)+"-"+titre+"/images/backdrops"
        wallpapers_remove(url)
        text_temp=str(movie.identifiant)+'.jpg'
        local_path = os.path.join('C:/Users/mrpie/Pictures/Affiches/', text_temp)
        try:
            os.remove(local_path)
        except Exception as e:
                print(f"Une erreur s'est produite : {e}")
        db.session.delete(movie)
        db.session.commit()
    
    return redirect(url_for('index'))

@app.route('/actor_search', methods=['GET', 'POST'])
def actor_search():
    actor_name = None
    actor_movies = []

    if request.method == 'POST':
        actor_name = request.form['actor_name']

        # Étape 3 : Appel de la fonction pour obtenir les films de l'acteur depuis la base de données
        actor_movies = get_actor_movies(actor_name)

    return render_template('actor_search.html', actor_name=actor_name, actor_movies=actor_movies)

@app.route('/total_duration', methods=['GET'])
def total_duration():
    movie_ids = [movie.identifiant for movie in Movie.query.all()]
    total_duration = calculate_total_duration(movie_ids)
    return jsonify({'total_duration': total_duration})

@app.route('/store_top_actors', methods=['POST'])
def store_top_actors():
    # Récupérez tous les acteurs de la base de données
    all_actors = db.session.query(Movie.actors).distinct().all()

    # Comptez le nombre de films pour chaque acteur
    actors_count = {}
    for actor in all_actors:
        actor_name = actor[0]
        count = count_actor_movies(actor_name)
        actors_count[actor_name] = count

    # Triez les acteurs par le nombre de films (en ordre décroissant) et prenez les 10 premiers
    top_actors = sorted(actors_count.items(), key=lambda x: x[1], reverse=True)[:10]

    # Enregistrez les 10 acteurs les plus vus dans un fichier
    with open('top_actors.txt', 'w') as file:
        for actor, count in top_actors:
            file.write(f"{actor}: {count}\n")

    return "Les 10 acteurs les plus vus ont été enregistrés avec succès."

# Nouvelle route pour afficher les 10 acteurs les plus vus
@app.route('/top_actors')
def top_actors():
    top_actors = load_top_actors_from_file()
    # Trier les acteurs par nombre de films (ordre décroissant)
    sorted_actors = sorted(top_actors, key=lambda x: x['count'], reverse=True)[:50]
    return render_template('top_actors.html', top_actors=sorted_actors)

if __name__ == '__main__':
    app.run(debug=True)

