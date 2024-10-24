# 1. Utiliser l'image Nginx officielle comme base
FROM nginx:latest

# 2. Mise à jour et installation du package `file`
RUN apt-get update && apt-get install -y file

# 3. Créer le répertoire pour notre site
RUN mkdir -p /var/concentration/html

# 4. Copier les fichiers HTML dans le répertoire de notre site
COPY html/ /var/concentration/html/

# 5. Copier notre configuration nginx spécifique
COPY conf/nginx.conf /etc/nginx/nginx.conf

# 6. Exposer le port 80 (par défaut pour Nginx)
EXPOSE 80

# 7. Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]

