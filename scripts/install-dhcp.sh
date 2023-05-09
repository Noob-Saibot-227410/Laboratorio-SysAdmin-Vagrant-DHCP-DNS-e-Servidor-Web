#!/bin/bash

# Update packages
sudo apt-get update

# Install DHCP server
sudo apt-get install -y isc-dhcp-server

# Configure DHCP
sudo sed -i 's/INTERFACESv4=""/INTERFACESv4="eth1"/g' /etc/default/isc-dhcp-server
sudo cp /vagrant/config/dhcpd.conf /etc/dhcp/dhcpd.conf

# Restart DHCP server
sudo systemctl restart isc-dhcp-server
