#!/bin/bash
#image=trusty-server-cloudimg-amd64-disk1
image=cirros-0.3.4-x86_64-uec
flavor=m1.tiny
network=net1
vm_ids="1 2"

nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p1 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p2 | awk '{print $2}') vmvx1 --key_name admin_key
sleep 20
nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p3 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p4 | awk '{print $2}') vmvx2 --key_name admin_key
#sleep 20

#for i in $vm_ids
#do
#    #nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep -w $network | awk '{print $2}') vmvx$i --key_name admin_key
#    nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p1 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p2 | awk '{print $2}') vmvx$i --key_name admin_key
#    sleep 5
#done

#nova get-vnc-console vmvx1 novnc
#nova get-vnc-console vmvx2 novnc
