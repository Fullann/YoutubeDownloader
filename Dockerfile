# Utilisez l'image Node.js 16 comme image de base
FROM node:18.17.1

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src

# Copiez le package.json et le package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez tous les fichiers du répertoire de votre application dans le conteneur
COPY . .

# Build de l'application
RUN npm run build

# Exposez le port sur lequel votre application React sera exécutée (par défaut, le port 80)
EXPOSE 3000

# Commande pour démarrer l'application lorsque le conteneur est lancé
CMD ["npm", "start"]
