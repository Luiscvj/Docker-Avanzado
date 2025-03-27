FROM nginx:1.27.2
RUN apt-get update && apt-get -y upgrade

#Creamos un grupo de usuarios y un usuario
RUN groupadd -r luis && useradd -r -g luis -d /home/luisk -m luisk
#Le doy acceso unicamente  a mi grupo y usuario a la carptea html
RUN chown -R luisk:luis /usr/share/nginx/html

#Cambio el Usuario, y de aqui en adelante el unico usuario que va a quedar es luisk

USER luisk

CMD ["echo", "Hola mundo desde luisk"]


