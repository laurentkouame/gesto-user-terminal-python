# Utilisez une image Python officielle en tant que parent
FROM python:3.8-slim-buster

# Définir le répertoire de travail dans le conteneur
WORKDIR /gesto-user-terminal-python

# Copier le fichier requirements.txt dans le conteneur
#COPY requirements.txt .

# Installer les dépendances
RUN pip3 install --no-cache-dir -r requirements.txt

# Copier le code source de l'application dans le conteneur
COPY . .

# Exposer le port 8000 pour permettre aux autres conteneurs de se connecter
EXPOSE 8000

# Lancer l'application
CMD ["python", "script.py"]
