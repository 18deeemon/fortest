#!/bin/bash
sudo su
apt update -y
apt install haproxy -y
git clone https://github.com/18deeemon/fortest.git
mv fortest/haproxy.cfg /etc/haproxy/haproxy.cfg 
