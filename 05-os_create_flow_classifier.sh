#!/bin/bash
# Don't forget to create port for the classifier 
#neutron flow-classifier-create \
# --ethertype IPv4 \
# --source-ip-prefix 55.55.55.2/32 \
# --logical-source-port 758d4c01-18ca-483b-999b-6d6b79384013 \
# --destination-ip-prefix 55.55.55.7/32 \
# --protocol tcp \
# --source-port 1:65000 \
# --destination-port 1:65000 FC1

neutron flow-classifier-create \
 --source-ip-prefix 55.55.55.2/32 \
 --destination-ip-prefix 55.55.55.7/32 \
 FC1
