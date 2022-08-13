#!/usr/bin/env bash
#
# Auteur : Emmanuel SAID
# Date : Aout 2022
# Version 1.0.0 : configuration port USB serie ttyUSB0 dialout
#

# Affiche un texte à l'écran :
echo "Configuration ttyUSB0"
echo "ttyUSB0 droit acces "
groups
sudo usermod -a -G dialout $USERNAME
ls -l /dev/ttyUSB0
echo " redemarrer la session "

