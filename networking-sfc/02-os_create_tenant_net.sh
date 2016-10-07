#!/bin/bash

tenant_net_name=net1
tenant_subnet_name=subnet1


#tenant_id=$(openstack project list | grep 'admin' | awk '{print $2}') #get admin tenant id
tenant_id=$(openstack project list | grep admin| tail -1|awk ' {print $2} ') ##get tenant id in devstack
sleep 3
neutron net-create $tenant_net_name --tenant-id=$tenant_id
sleep 3
neutron subnet-create --name $tenant_subnet_name --tenant-id=$tenant_id $tenant_net_name 55.55.55.0/24

