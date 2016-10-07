#!/bin/bash

sudo ovs-vsctl set bridge br-int protocols=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13
sudo ovs-vsctl set bridge br-mgmt0 protocols=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13
sudo ovs-vsctl set bridge br-tun protocols=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13
sudo ovs-vsctl set bridge br-ex protocols=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13


#sudo ovs-vsctl set bridge br-int protocols=OpenFlow13
#sudo ovs-vsctl set bridge br-mgmt0 protocols=OpenFlow13
#sudo ovs-vsctl set bridge br-ex protocols=OpenFlow13
#sudo ovs-vsctl set bridge br-tun protocols=OpenFlow13
