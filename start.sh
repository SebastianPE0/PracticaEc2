#!/bin/bash
 
# Obtén el hostname de la instancia EC2
HOSTNAME=$(curl -s http://169.254.169.254/latest/meta-data/hostname)
 
# Reemplaza el marcador {{hostname}} con el hostname en index.html
sed -i "s/{{hostname}}/${HOSTNAME}/g" /usr/local/apache2/htdocs/index.html
 
# Inicia Apache en primer plano
httpd-foreground
