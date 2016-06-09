#!/bin/bash
# Don't forget to create port for the classifier 
neutron flow-classifier-create \
 --ethertype IPv4 \
 --source-ip-prefix 55.55.55.2/32 \
 --destination-ip-prefix 55.55.55.9/32 \
 --protocol tcp \
 --source-port 22:22 \
 --destination-port 1:65000 FC1
