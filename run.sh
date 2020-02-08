#!/bin/sh

STEAMCMD="/usr/local/bin/steamcmd.sh"

csgo/srcds_run -game csgo -tickrate 128 -autoupdate -steam_dir ~/hlserver -steamcmd_script ~/hlserver/csgo_ds.txt $@

#csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_active +map de_cache +sv_lan 1
#$STEAMCMD +runscript run_csgo.txt
