#!/bin/bash

sudo apt-get purge maven
sudo apt-get purge maven2
sudo apt-get purge maven3

set -exu

# Install Maven3
wget -c http://www.trieuvan.com/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar xzvf apache-maven-3.5.0-bin.tar.gz
sudo rm -r /opt/apache-maven-3.5.0
sudo mv apache-maven-3.5.0 /opt
if ! grep "apache-maven" ~/.bashrc
then
    echo 'export PATH=/opt/apache-maven-3.5.0/bin:$PATH' >> ~/.bashrc
fi
rm apache-maven-3.5.0-bin.tar.gz
