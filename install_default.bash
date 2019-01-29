#!/bin/bash

onlyroot="Do not run this script as root."
  
if [ $(whoami) == 'root' ];then
    echo -e  $COLOR$onlyroot$MONO       #"Only root can do this operation."
    #DBG_MSG  "exit 5"
    exit 0
fi

# update system
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# run installation scripts
cd ./scripts

sudo chmod +x ./tool_install.bash
./tool_install.bash

sudo chmod +x ./devel_install.bash
./devel_install.bash

sudo chmod +x ./devel2_install.bash
./devel2_install.bash

sudo chmod +x ./lcm_install.bash
./lcm_install.bash

