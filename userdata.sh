#!/bin/bash
sudo su
apt update -y
apt install apache2 -y
service apache2 start
apt install mariadb-server mariadb-client -y
systemctl start mariadb
apt install php -y
apt install wget -y
wget https://wordpress.org/wordpress-5.9.3.zip
sleep 20s
apt install unzip
sleep 20s
unzip wordpress-5.9.3.zip
sleep 5s
cd wordpress/
cp -r * /var/www/html
cd /var/www/html
rm -rf index.html
apt install php-mysql php-cli php-cgi php-gd -y
sleep 15s
systemctl restart apache2
echo 1 > /proc/sys/net/ipv4/ip_forward
chown -R www-data:www-data /var/www/
