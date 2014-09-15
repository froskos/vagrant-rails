#!/bin/bash
#

echo ""
echo "BUILD STARTS"
echo ""


#Set path to scripts installing each package
BUILD_PATH="/vagrant/env/build"
#vaVAGRANT_HOME_PATH="/home/vagrant"

#Call the scripts that install the required packages

echo ""
echo "Fetching from apt-get repositories"
echo ""

apt-get update

$BUILD_PATH/git.sh
$BUILD_PATH/ruby.sh
$BUILD_PATH/vim.sh
$BUILD_PATH/mysql.sh
$BUILD_PATH/nginx.sh

