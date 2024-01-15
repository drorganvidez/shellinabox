#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install shellinabox -y

sudo sed -i 's/SHELLINABOX_PORT=4200/SHELLINABOX_PORT=4200/' /etc/default/shellinabox

sudo systemctl restart shellinabox
sudo systemctl enable shellinabox

echo "Shell In A Box installed, configured on port 4200 and enabled to start at boot time."
