#!/bin/bash

neutron flow-classifier-create \
 --ethertype IPv4 \
 --source-ip-prefix 22.1.20.1/32 \
 --destination-ip-prefix 172.4.5.6/32 \
 --protocol tcp \
 --source-port 23:23 \
 --destination-port 100:100 FC1
