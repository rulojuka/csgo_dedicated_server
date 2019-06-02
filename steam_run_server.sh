#!/bin/bash
echo "Enter steam token: "
read -s STEAM_TOKEN

./srcds_run -game csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_active +map de_dust2 +sv_setsteamaccount $STEAM_TOKEN +ip 0.0.0.0 -port 27015
