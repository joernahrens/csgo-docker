#!/bin/sh

cd /opt/steamhome/games/csgo
./srcds_run -game csgo -console -usercon +mapgroup mg_active +map de_dust2 +sv_lan 1
