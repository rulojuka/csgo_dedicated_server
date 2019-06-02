# csgo_dedicated_server
My journey to create a professional-configurated csgo dedicated server

Expected features:

- Fully automated deploy: no more than 1 enter should be pressed for the server to be deployed
- Cloud-ready: This should be easily-deployed on DigitalOcean, AWS or similar
- Decent admin configuration: The admin should not have the hardest time of his life when administering a match.
- Some template configurations: There should be some templates like competitive.cfg, switchTeams.cfg to help admins

Nice features to have:

- Some documentation of DigitalOcean/AWS/etc machine configurations that would run the server smoothly
- A fully automated bot (.switch, .stay, .pause, etc)


## First Setup

These steps should run on an Amazon EC2 instance.

Install steamcmd and create steam user(run as root):
```
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install steamcmd # This opens an ncurses license agreement
sudo useradd -m steam -s /bin/bash
sudo echo "Enter path of storage device root: "
sudo read -s STORAGE_DIR
sudo mkdir $STORAGE_DIR/steamcmd
sudo chown steam $STORAGE_DIR/steamcmd
```

Change into `steam` user:
```
sudo su steam
```

Clone this repository to `steam` home directory
```
cd
git clone https://github.com/rulojuka/csgo_dedicated_server.git
```

## Run a dedicated server

Run steam cmd and install/update CSGO Dedicated Server (this will download CSGO and takes a while the first time.)
```
steam$ ./csgo_dedicated_server/steam_run_steam_cmd.sh
```

Run dedicated server with default configuration:
```
steam$ ./steamcmd/srcds_run -game csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_active +map de_dust2
```
