#!/bin/bash

# Update packages
sudo apt-get update

# Install DNS server
sudo apt-get install -y bind9 bind9utils bind9-doc

# Configure DNS
sudo cp /vagrant/config/named.conf /etc/bind/named.conf
sudo cp /vagrant/config/named.conf.options /etc/bind/named.conf.options

# Create DNS zone file
sudo mkdir /etc/bind/zones
sudo cp /vagrant/config/db.lab.local /etc/bind/zones/

# Set permissions
sudo chown -R bind:bind /etc/bind/

# Restart DNS server
sudo systemctl restart bind9
