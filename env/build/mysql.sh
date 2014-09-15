#!/bin/bash
#install mysql

echo ""
echo "Installing mysql-server"
echo ""

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password ""'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ""'
sudo apt-get -y install mysql-server