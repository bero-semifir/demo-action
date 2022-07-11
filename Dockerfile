# Selection de l'image de base
FROM node

# Copie des package.json et package-lock.json (si disponnible)
COPY package*.json .

# installation des dépendances
RUN npm install

# Copie du reste des fichiers (app et autres configs)
COPY . .

# Exposer le port de l'app
EXPOSE 4200

# Sert l'app (⚠ mode dev ici)
CMD ["npm","start", "--", "--host", "0.0.0.0"]
