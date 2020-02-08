#!/bin/sh

STEAMCMD="/usr/local/bin/steamcmd.sh"

mkdir -p games

$STEAMCMD +runscript /opt/steam/install_csgo.txt

exit 0
