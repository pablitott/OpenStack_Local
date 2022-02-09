1. execute Lab1 to Lab-6
2. ssh controller
3. get the password for Admin as 
    cat admin-openrc | grep OS_PASSWORD | awk -F "=" '{print $2}'
4. got o web browser and browse http://controller/horizon
    * Project: Default
    * User : Admin
    * password: from 3 above

get a new token
token=$(openstack token issue -f json | jq -r ".id")
curl -H "X-Auth-Token: $token" -H "OpenStack-API-Version: placement 1.31" "http://controller:8778/resource_classes" | jq


vi /etc/openstack-dashboard/local_settings.py 
/etc/apache2/conf-available/openstack-dashboard.conf

/etc/apache2/sites-available/
/etc/keystone/keystone.conf

systemctl reload apache2


create a new token
ssh controller
source admin-openrc
sudo apt-get install jq
token=$openstack token issue -f jason | jq -r ".id" )
curl -H "X-Auth-Token: $token" \
     -H "OpenStack-API-Version: plaement 1.31" \
     "http://controller:8778/resouorce_classes" | jq
