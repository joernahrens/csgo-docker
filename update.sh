#!/bin/sh

STEAMCMD="/opt/steam/steamcmd.sh"

mkdir -p games

$STEAMCMD +runscript /opt/steamhome/install_csgo.txt

exit 0
