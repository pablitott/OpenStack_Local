# openstack-labs
## Setting up our OpenStack-Playground
[GIT repository](https://github.com/christianb93/openstack-labs)
[playground instructions](https://leftasexercise.com/2020/01/27/setting-up-our-openstack-playground/) 

A collection of scripts and Ansible playbooks around OpenStack. Here is a list of the labs currently implemented.

* Lab1 - set up the playground and install basic infrastructure services
* Lab2 - Install Keystone
* Lab3 - Install Glance and Placement
* Lab4 - Install Nova
* Lab5 - Install Neutron in a very basic setup (one flat network only)
* Lab6 - Add the Horizon GUI
* Lab7 - Add a VLAN network as a provider network
* Lab8 - Install a virtual router using the Neutron L3 agent
* Lab9 - Allow a tenant to provision VXLAN networks
* Lab10 - Introduce a separate network node on which the Neutron agents run
* Lab11 - Play with iSCSI
* Lab12 - LVM playground
* Lab13 - Install Cinder
* Lab14 - Octavia as stand-alone loadbalancer

In addition, this repository contains scripts to bring up an OpenStack playground on various cloud platform - a cloud in the cloud.

* Packet - provision a Packet.net bare metal instance and install a lab there
* DigitalOcean - provision a Droplet on DigitalOcean and use that as a lab host
* GCE - provision a multi-node setup on Googles cloud platform

Links used
0. [GIT repository](https://github.com/christianb93/openstack-labs)  
1. [playground instructions](https://leftasexercise.com/2020/01/27/setting-up-our-openstack-playground/)  
3. [openstack supporting services glance and placement](https://leftasexercise.com/2020/02/10/openstack-supporting-services-glance-and-placement/)  
4. [openstack nova installation and overview](https://leftasexercise.com/2020/02/14/openstack-nova-installation-and-overview/)
5. [openstack-neutron-architecture-and-overview](https://leftasexercise.com/2020/02/21/openstack-neutron-architecture-and-overview/)
6. [OpenStack Neutron – handling instance metadata](https://leftasexercise.com/2020/03/30/openstack-neutron-handling-instance-metadata/)
7. [OpenStack Neutron – running Neutron with a separate network node](https://leftasexercise.com/2020/03/09/running-openstack-with-a-separate-network-node/)
8. [Building your own cloud with OpenStack – overview](https://leftasexercise.com/2020/01/20/q-running-your-own-cloud-with-openstack-overview/)
9. [OpenStack Neutron installation – basic setup and our first instances](https://leftasexercise.com/2020/02/24/openstack-neutron-installation-basic-setup-and-our-first-instances/)
10. [A cloud in the cloud – running OpenStack on a public cloud platform](https://leftasexercise.com/2020/05/11/a-cloud-in-the-cloud-running-openstack-on-gcp-or-packet-net/)
11. [OpenStack Octavia – architecture and installation](https://leftasexercise.com/2020/05/01/openstack-octavia-architecture-and-installation/)
12. [Using Ansible with a jump host](https://leftasexercise.com/2019/12/23/using-ansible-with-a-jump-host/)
13. [OpenStack Cinder foundations – building logical volumes and snapshots with LVM](https://leftasexercise.com/2020/04/13/openstack-cinder-foundations-building-logical-volumes-and-snapshots-with-lvm/)
14. [OpenStack Cinder foundations – storage networks, iSCSI, LUNs and all that](https://leftasexercise.com/2020/04/06/openstack-cinder-foundations-storage-networks-iscsi-luns-and-all-that/)


Other references:
[OpenStack Installtion guide](https://docs.openstack.org/install-guide/)
