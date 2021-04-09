#!/bin/sh
apt-get update
apt-get install -y wget locales
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
apt-get update
apt-get install -y webmin