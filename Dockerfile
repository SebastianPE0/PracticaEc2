# Usa la imagen oficial de Apache 
FROM httpd:2.4 
# Copia los archivos de tu aplicación al contenedor 
COPY . /usr/local/apache2/htdocs/ 
# Configura los permisos si es necesario (opcional) 
RUN chown -R www-data:www-data /usr/local/apache2/htdocs/ 
# Exponer el puerto 80 
EXPOSE 80