#!/bin/bash
sudo su
apt update -y
apt install apache2 -y
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
systemctl restart httpd
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A PREROUTING -p tcp -d 44.197.169.159 --dport 80 -j DNAT --to-destination 172.31.0.221:80
iptables -t nat -A POSTROUTING -p tcp --sport 80 --dst 172.31.0.221 -j SNAT --to-source 44.197.169.159:80

chown -R www-data:www-data /var/www/
mysql -u root -p
 create database wordpress;
 create user "wordpress"@"%" identified by "password";
 grant all privileges on wordpress.* to "wordpress"@"%";
 exit







service httpd start
chkconfig httpd on
