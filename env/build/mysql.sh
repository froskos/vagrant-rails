#!/bin/bash
#install mysql

echo ""
echo "Installing mysql-server"
echo ""

debconf-set-selections <<< 'mysql-server mysql-server/root_password password ""'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ""'
apt-get -y install mysql-server libmysqlclient-dev libmysql-ruby