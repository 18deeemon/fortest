#!/bin/bash
sudo su
mysql -u root --password=root
sleep 2s
create database wordpress;
sleep 2s
create user "wordpress"@"%" identified by "password";
sleep 2s
grant all privileges on wordpress.* to "wordpress"@"%";
sleep 5s
exit
