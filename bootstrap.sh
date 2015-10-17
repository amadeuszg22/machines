#!/usr/bin/env bash

echo "System will install server features"


echo "System Upgrades repositories"
sudo apt-get update
echo "System install Htop"
sudo apt-get install htop -y
echo "System install git & clone system configurations"
sudo apt-get install git -y
sudo mkdir /home/pi/machines/
sudo git clone git@github.com:amadeuszg22/machines.git /home/pi/machines/
echo "System copy keys"
sudo rsync -artvpolz /home/pi/machines/root/.ssh/ /root/.ssh/
sudo chmod a-rwx ~/.ssh/id_rsa
sudo chmod u+rw ~/.ssh/id_rsa
echo "Network Configuration"
sudo rsync -artvpolz /home/pi/machines/etc/ /etc/
echo "installing backup"
sudo apt-get install backup2l -y
