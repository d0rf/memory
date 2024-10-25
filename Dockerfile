# Étape 1 : Utiliser l'image de base nginx
FROM nginx:alpine

# Étape 2 : Copier votre configuration nginx personnalisée
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Étape 3 : Copier les fichiers HTML du site dans le dossier attendu par nginx
COPY html/ /var/concentration/html/

# Étape 4 : Exposer le port 80 pour permettre l'accès
EXPOSE 80

# Étape 5 : Démarrer nginx en mode "foreground" pour que le conteneur continue de fonctionner
CMD ["nginx", "-g", "daemon off;"]

