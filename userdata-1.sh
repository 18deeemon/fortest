#!/bin/bash
sudo su
apt update -y
apt install haproxy -y
service haproxy stop
sleep 10s
git clone https://github.com/18deeemon/fortest.git
mv fortest/haproxy.cfg /etc/haproxy/haproxy.cfg
service haproxy start
