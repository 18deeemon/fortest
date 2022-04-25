#!/bin/bash
sudo su
apt update -y
apt install apache2 -y
service apache2 start
apt install mariadb-server mariadb-client -y
systemctl start mariadb
sudo mysql_secure_installation
apt install php -y
apt install wget -y
wget https://wordpress.org/wordpress-5.9.3.zip
apt install unzip
unzip wordpress-5.9.3.zip
cd wordpress/
cp -r * /var/www/html
cd /var/www/html
rm -rf index.html
apt install php-mysql php-cli php-cgi php-gd -y
systemctl restart apache2
echo 1 > /proc/sys/net/ipv4/ip_forward
chown -R www-data:www-data /var/www/
mysql -u root -p
 create database wordpress;
 create user "wordpress"@"%" identified by "password";
 grant all privileges on wordpress.* to "wordpress"@"%";
 exit
