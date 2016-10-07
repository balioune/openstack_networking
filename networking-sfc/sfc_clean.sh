#!/bin/bash

neutron port-chain-delete PC1

neutron port-pair-group-delete PG1
neutron port-pair-group-delete PG2

neutron port-pair-delete PP1
neutron port-pair-delete PP2

neutron flow-classifier-delete FC1

neutron port-delete p1
neutron port-delete p2
neutron port-delete p3
neutron port-delete p4
