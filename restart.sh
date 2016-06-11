#!/bin/bash

sudo service neutron-server restart
sudo service neutron-openvswitch-agent restart
#sudo service neutron-linuxbridge-agent restart
sudo service neutron-dhcp-agent restart
sudo service neutron-metadata-agent restart
sudo service neutron-l3-agent restart
