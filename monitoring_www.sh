#!/bin/bash
#petite affichage une un fois la commande du scan lancé sur le terminal
echo  "############################################################################
#     Scan de controle de modification sur les fichiers de l'ordinateur    #
#                                                                          #
# 		#################################			   #
#                                                                          #
#               autor : Eleve de Paris Descartes                           #
############################################################################ "

#la ligne du dessous est le titre du mail de ce que l'utilisateur recevera dans sa boite mail personnelle 
Subject="RAPPORT de scan de fichier ! "

#cette ligne sert a dire si un fichier avec une des extension ecrite a ete modifier pour la mettre dans le fichier pour envoyer la liste des fichier a modifier
find /home/gosanku/ -name -ls -o -regex '.*.(cryptolocker|encrypted|doc|jpeg|py|c|pdf|xml|php|html|js|txt|gif|conf|png).*' -mtime 0 | xargs ls -lah > fichier-pour-envoyer-la-liste-fichiers-modifies

#entrer l'adresse mail de l'utilisateur ici pour qu'il puisse recevoir les infos dans sa messagerie personnelle 
mail -s "$Subject" "steveelh@gmail.com" < fichier-pour-envoyer-la-liste-fichiers-modifies


