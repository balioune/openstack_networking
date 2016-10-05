#!/bin/bash
# Don't forget to create port for the classifier 
#neutron flow-classifier-create \
# --ethertype IPv4 \
# --source-ip-prefix 55.55.55.2/32 \
# --logical-source-port bd78bbbd-2def-4bfe-b66c-e6f2534553bc \
# --destination-ip-prefix 55.55.55.7/32 \
# --protocol tcp \
# --source-port 1:65000 \
# --destination-port 1:65000 FC1


#neutron flow-classifier-create \
# --ethertype IPv4 \
# --source-ip-prefix 55.55.55.2/32 \
# --logical-source-port bd78bbbd-2def-4bfe-b66c-e6f2534553bc \
# --destination-ip-prefix 55.55.55.7/32 \
# --protocol icmp \
# FC1
