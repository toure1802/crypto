#!/bin/bash

#creer  deamon et fichier




#eviter le chemin home/root
USERNAME=$( logname )

TO_CRYPT="/home/$USERNAME/project_crypt/toCrypt"
CRYPTED="/home/$USERNAME/project_crypt/crypted"
TO_DECRYPT="/home/$USERNAME/project_crypt/toDecrypt"
DECRYPTED="/home/$USERNAME/project_crypt/toDecrypt"

CHEMIN_SH="/usr/bin"

mkdir -p TO_CRYPT
mkdir -p CRYPTED
mkdir -p TO_DECRYPT
mkdir -p DECRYPTED

sudo cp service.sh $CHEMIN_SH

printf "%s\n" "[unit]" "" "[service]" "" "[install]" ""
