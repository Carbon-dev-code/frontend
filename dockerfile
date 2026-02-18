FROM nginx:alpine

# Supprime config par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie ton index.html
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]