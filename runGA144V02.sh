#!/usr/bin/env bash
#
# Auteur : Emmanuel SAID
# Date : Aout 2022
# Version 1.0.0 : configuration port USB serie ttyUSB0 lancement Arrayforth
#

# Affiche un texte à l'écran :
echo "Configuration ttyUSB0"
echo "ttyUSB0 droit acces "
sudo chmod 666 /dev/ttyUSB0
echo " vitesse ttyUSB0 921600"
sudo stty -F /dev/ttyUSB0 921600 -parenb cs8 -cstopb -crtscts raw -echo
echo " com --> ttyUSB0  "
stty -F /dev/ttyUSB0 | grep speed
cd ~/.wine/dosdevices/
echo " ttyUSB0 est attache au COM"
ls -l | grep ttyUSB0
setserial /dev/ttyUSB0 low_latency
echo " lancement programme Arrayforth "
cd ~/.wine/drive_c/GreenArrays02/EVB002/
wine Okad2-42c-pd.exe
