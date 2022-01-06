[verify operation](https://docs.openstack.org/keystone/pike/install/keystone-verify-obs.html) of the identity service before installing other services





SSH to server
> openstack server ssh demo-instance-2 --identity demo-key --private --login cirros

open server on http
openstack console url show demo-instance-1

ssh connect to instance
> openstack server ssh  --login cirros --identity ~/demo-key --private demo-instance-1

 OpenStack GUI
 > http://127.0.0.1/horizon/auth/login/  
 > http://192.168.100.11/horizon/auth/login/?next=/horizon/  

Horizon settings:
 sudo vi /etc/openstack-dashboard/local_settings.py

 keystone user-password-update --pass aigheeP1 

sudo vi  /etc/apache2/sites-enabled/keystone.conf 

todo: read https://docs.openstack.org/liberty/install-guide-rdo/launch-instance-networks-public.html
todo: 
todo: document list of vagrant plugins


openstack dasboard config
> /etc/openstack-dashboard/local_settings.py

error in credentials
/usr/bin/keystone-wsgi-public

apache2 log folder
/var/log/apache2/error.log


Horizon access projects and GET methods [Glance and placement](https://leftasexercise.com/2020/02/10/)

show GET values
curl \
    -H "X-Auth-Token: $token" \
    -H "OpenStack-API-Version: placement 1.31" \
    "http://controller:5000/v3/projects" | jq

curl \
    -H "X-Auth-Token: $token" \
    -H "OpenStack-API-Version: placement 1.31" \
    "http://controller:5000/v3/auth/tokens" | jq

curl \
    -H "X-Auth-Token: $token" \
    -H "OpenStack-API-Version: placement 1.31" \
    "http://controller:5000//v3/users/{user_id}/application_credentials" | jq

OpenStack Images repository [Openstack Images](https://cloud-images.ubuntu.com/bionic/current/)