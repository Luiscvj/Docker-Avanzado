#!/bin/bash
#Elimina las imagenes sin tag
docker image prune -a
#Elimana todos los contenedores que no se usen
docker container prune
#Elimina tdos los volumenes que ya no se esten compartiendo
docker volume prune
# Hace todo lo anterior
docker system prune 
#Elimina el cacge
docker builder prune