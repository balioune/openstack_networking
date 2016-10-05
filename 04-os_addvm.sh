#!/bin/bash
#image=trusty-server-cloudimg-amd64-disk1
image=cirros-0.3.4-x86_64-uec
flavor=m1.tiny
network=net1
vm_ids="1 2"

nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p1 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p2 | awk '{print $2}') vmvx1 
sleep 25
nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p3 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p4 | awk '{print $2}') vmvx2
sleep 25

# video server 
nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep net1| head -1|awk ' {print $2} ')  video

# source vm
nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep net1| head -1|awk ' {print $2} ')  vm_source


