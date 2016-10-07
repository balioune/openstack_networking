#!/bin/bash

cd ~
git clone https://github.com/openstack/networking-sfc/
cd networking-sfc
#git checkout stable/liberty
sudo python setup.py install

sudo neutron-db-manage --subproject networking-sfc check_migration
sudo neutron-db-manage --subproject networking-sfc branches
sudo neutron-db-manage --subproject networking-sfc history
sudo neutron-db-manage --subproject networking-sfc upgrade head

#neutron.services.l3_router.l3_router_plugin.L3RouterPlugin,networking_sfc.services.flowclassifier.plugin.FlowClassifierPlugin,networking_sfc.services.sfc.plugin.SfcPlugin
