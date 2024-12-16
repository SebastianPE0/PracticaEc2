# Usa la imagen oficial de Apache
FROM httpd:2.4
 
# Copia los archivos de tu aplicación al contenedor
COPY index.html /usr/local/apache2/htdocs/
 
# Copia el script de inicio
COPY start.sh /start.sh
 
# Da permisos de ejecución al script de inicio
RUN chmod +x /start.sh
 
# Exponer el puerto 80
EXPOSE 80
 
# Usa el script de inicio como punto de entrada
CMD ["/start.sh"]