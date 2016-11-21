# MoteurPhysiqueServeur


### Dépendences ###

* Ce projet utilise Websocketpp et Boost
* Veuillez télécharger Websocketpp : https://github.com/zaphoyd/websocketpp
* Veuillez télécharger Boost via votre package controller (i.e pour Ubunutu la paquet : libboost-all-dev)

### Config ###

* Créer un fichier VAR à la racine
* Ajouter cette ligne : WEBSOCKETPP_PATH = \<Your/Path/To/Websocketpp\>
* Ajouter cette ligne : PHYSICENGINE_PATH = \<Your/Path/To/MoteurPhysique\>

### Makefile ###

* make : Compile le projet
* make clean : Supprime les binaires
* make run : Exécute le serveur

