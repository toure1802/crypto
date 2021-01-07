#!/bin/bash



USERNAME=$( logname )


CHEMIN_FICHIERS='.'
TO_CRYPT="/home/$USERNAME/project_crypt/toCrypt"
CRYPTED="/home/$USERNAME/project_crypt/crypted"
TO_DECRYPT="/home/$USERNAME/project_crypt/toDecrypt"
DECRYPTED="/home/$USERNAME/project_crypt/Decrypted"

while IFS=$'\n' read fichier
do
	${CHEMIN_FICHIERS}/encrypter.py $fichier ${DECRYPTED}/${fichier}.crypt
done <<<$(ls ${TO_CRYPT}/) 
