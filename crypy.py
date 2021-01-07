#!/usr/bin/env python
import sys

from Crypto.PublicKey import RSA


key = RSA.generate(1024)

k = key.exportKey("PEM")
p = key.publickey().exportKey("PEM")


with open('private,PEM','w') as kf:
        kf.write(p.decode())
        kf.close()

with open('public,PEM','w') as pf:
        pf.write(p.decode())
        pf.close()

if(len(sys.argv) > 2):
         fichier = sys.argv[1]
else:
    fichier = input("le fichier a crypter : ");

fo = open(fichier,"rb")
text = fo.read()
d_encrypt = key.publickey().encrypt(text,32)

fo = open(fichier + 'crypt','wb')
fo.write(d_encrypt[0])

fo.close()
