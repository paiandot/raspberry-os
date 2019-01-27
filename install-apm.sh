#!/bin/sh

# Apache
sudo apt-get install -y apache2 

#MySQL
sudo apt-get install -y mysql-server mysql-client

#PHP
apt-cache search php7

#optional
# sudo apt-get install -y libapache2-mod-php7.0 php7.0 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-fpm php7.0-gd php7.0-json php7.0-mbstring php7.0-mysql php7.0-mcrypt  php7.0-xml php7.0-xmlrpc

echo "install finish" 
