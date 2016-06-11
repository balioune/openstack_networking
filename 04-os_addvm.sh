#!/bin/bash
#image=trusty-server-cloudimg-amd64-disk1
image=ubuntu
flavor=m1.small
network=net1
vm_ids="1 2"

nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p1 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p2 | awk '{print $2}') vmvx1 --key-name admin_key
sleep 25
nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p3 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p4 | awk '{print $2}') vmvx2 --key-name admin_key
#sleep 25
#nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p5 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p6 | awk '{print $2}') vmvx3 --key-name admin_key

# video server 
#nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep net1| head -1|awk ' {print $2} ')  video --key-name admin_key
#for i in $vm_ids
#do
#    #nova boot --flavor $flavor --image $image --nic net-id=$(neutron net-list | grep -w $network | awk '{print $2}') vmvx$i --key_name admin_key
#    nova boot --flavor $flavor --image $image --nic port-id=$(neutron port-list | grep -w p1 | awk '{print $2}') --nic port-id=$(neutron port-list | grep -w p2 | awk '{print $2}') vmvx$i --key_name admin_key
#    sleep 5
#done

#nova get-vnc-console vmvx1 novnc
#nova get-vnc-console vmvx2 novnc
