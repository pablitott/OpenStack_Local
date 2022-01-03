SSH to server
> openstack server ssh demo-instance-2 --identity demo-key --private --login cirros

open server on http
openstack console url show demo-instance-1

 http://192.168.100.11:ping/vnc_auto.html?path=%3Ftoken%3D4f6e74df-85c1-4ee1-9a3e-645b401dedf3

openstack server ssh  --login cirros --identity ~/demo-key --private demo-instance-1

 OpenStack GUI
 http://127.0.0.1/horizon/auth/login/

Horizon settings:
 sudo vi /etc/openstack-dashboard/local_settings.py

 keystone user-password-update --pass aigheeP1 000df15e2108466290dcab636ad76180
sudo vi  /etc/apache2/sites-enabled/keystone.conf 

todo: read https://docs.openstack.org/liberty/install-guide-rdo/launch-instance-networks-public.html
todo: 
todo: document list of vagrant plugins

