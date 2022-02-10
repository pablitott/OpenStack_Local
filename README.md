# openstack-labs
## Setting up our OpenStack-Playground

#### A collection of scripts and Ansible playbooks around OpenStack.
Here is a list of the labs currently implemented.  
[GIT repository](https://github.com/christianb93/openstack-labs)

1. Lab1 - set up the playground and install basic infrastructure services
    - [setting up our openstack playground](https://leftasexercise.com/2020/01/27/setting-up-our-openstack-playground/)  
2. Lab2 - Install Keystone  
    - [openstack keystone installation and overview](https://leftasexercise.com/2020/02/03/openstack-keystone-installation-and-overview/)
    - [OpenStack keystone a deep dive into tokens and policies](https://leftasexercise.com/2020/02/07/openstack-keystone-a-deep-dive-into-tokens-and-policies/)
3. Lab3 - Install Glance and Placement
    - [openstack supporting services glance and placement](https://leftasexercise.com/2020/02/10/openstack-supporting-services-glance-and-placement/)  
4. Lab4 - Install Nova
    - [openstack nova installation and overview](https://leftasexercise.com/2020/02/14/openstack-nova-installation-and-overview/)
5. Install Neutron in a very basic setup (one flat network only)
    - [openstack-neutron-architecture-and-overview](https://leftasexercise.com/2020/02/21/openstack-neutron-architecture-and-overview/)
    - [OpenStack Neutron installation – basic setup and our first instances](https://leftasexercise.com/2020/02/24/openstack-neutron-installation-basic-setup-and-our-first-instances/)
    - [OpenStack Neutron – handling instance metadata](https://leftasexercise.com/2020/03/30/openstack-neutron-handling-instance-metadata/)
    - [OpenStack Neutron – running Neutron with a separate network node](https://leftasexercise.com/2020/03/09/running-openstack-with-a-separate-network-node/)
6. Lab6 - Add the Horizon GUI
7. Lab7 - Add a VLAN network as a provider network
8. Lab8 - Install a virtual router using the Neutron L3 agent
9. Lab9 - Allow a tenant to provision VXLAN networks
10. Lab10 - Introduce a separate network node on which the Neutron agents run
11. Lab11 - Play with iSCSI
12. Lab12 - LVM playground
13. Lab13 - Install Cinder
14. Lab14 - Octavia as stand-alone loadbalancer

In addition, this repository contains scripts to bring up an OpenStack playground on various cloud platform - a cloud in the cloud.

* Packet - provision a Packet.net bare metal instance and install a lab there
* DigitalOcean - provision a Droplet on DigitalOcean and use that as a lab host
* GCE - provision a multi-node setup on Googles cloud platform

Links used

Non classified Links but related
- [Building your own cloud with OpenStack – overview](https://leftasexercise.com/2020/01/20/q-running-your-own-cloud-with-openstack-overview/)
- [A cloud in the cloud – running OpenStack on a public cloud platform](https://leftasexercise.com/2020/05/11/a-cloud-in-the-cloud-running-openstack-on-gcp-or-packet-net/)
- [OpenStack Octavia – architecture and installation](https://leftasexercise.com/2020/05/01/openstack-octavia-architecture-and-installation/)
- [Using Ansible with a jump host](https://leftasexercise.com/2019/12/23/using-ansible-with-a-jump-host/)
- [OpenStack Cinder foundations – building logical volumes and snapshots with LVM](https://leftasexercise.com/2020/04/13/openstack-cinder-foundations-building-logical-volumes-and-snapshots-with-lvm/)
- [OpenStack Cinder foundations – storage networks, iSCSI, LUNs and all that](https://leftasexercise.com/2020/04/06/openstack-cinder-foundations-storage-networks-iscsi-luns-and-all-that/)


Other references:
[OpenStack Installtion guide](https://docs.openstack.org/install-guide/)
