#!/bin/bash

echo "Entering home directory and creating install directory"
cd
mkdir steamcmd

echo "Running steamcmd with update_csgo.script"
steamcmd +runscript ~/csgo_dedicated_server/update_csgo.script
