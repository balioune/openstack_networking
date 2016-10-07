#!/bin/bash
image=trusty-server-cloudimg-amd64-disk1
flavor=m1.small
network=net1
vm_ids="1 2"

for i in $vm_ids
do
    nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep -w $network | awk '{print $2}') vmvx$i --key_name admin_key
    sleep 5
done

#nova get-vnc-console vmvx$i novnc
