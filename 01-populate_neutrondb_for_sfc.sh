#!/bin/bash

sudo neutron-db-manage --subproject networking-sfc check_migration
sudo neutron-db-manage --subproject networking-sfc branches
sudo neutron-db-manage --subproject networking-sfc history
sudo neutron-db-manage --subproject networking-sfc upgrade head
