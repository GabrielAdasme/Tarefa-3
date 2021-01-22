#!/bin/bash

# Script para conectar em server via ssh com senha.

# Como utilizar:
# ./seuscript.sh -u usuario -p senha -s host



# Setar variaveis em targ para ordenar entradas
while getopts "u:p:s:" OPTION
do
        case $OPTION in

                u) USER=$OPTARG ;;
                p) PASS=$OPTARG ;;
                s) HOST=$OPTARG ;;
        esac
done


# Passagem de parametros para usuario
if [ "$USER" ] && [ "$PASS" ] && [ "$HOST" ]; then

    clear
    echo "Conectando ao server... $HOST"
    sshpass -p $PASS ssh $USER'@'$HOST

fi
