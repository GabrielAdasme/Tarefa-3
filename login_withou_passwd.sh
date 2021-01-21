#!/bin/bash

# Script para se conectar em server via ssh sem senha utilizando arquivo txt com credenciais.

# OBS: Criar um arquivo txt com a senha do user a ser conectado para ser utilizando nos parametros do script.


# Como utilizar este script:
# ./meuscript.sh -u usuario -h servidor


#local de armazenar senha admin para conectar
source user_ssh.txt


while getopts "u:h:" OPTION
do
        case $OPTION in

                u) USER=$OPTARG ;;
                h) HOST=$OPTARG ;;
        esac
done
if [ "$USER" ] && [ "$HOST" ]; then

    clear
    echo "Conectando ao servidor... $HOST"
    sleep 3

    sshpass -p $pass ssh $USER'@'$HOST
    if [ $? = "0" ]; then

        clear
        sleep 2
        echo -e "\nDesconectando de $HOST\n"
    fi
else
  clear 
 fi
