ansible-playbook 1-infrastructure/infrastructure.yaml -i 1-infrastructure/hosts.ini
ansible-playbook 2-keystone/keystone.yaml -i 2-keystone/hosts.ini
ansible-playbook 3-glance/glance.yaml -i 3-glance/hosts.ini
ansible-playbook 4-nova/nova.yaml -i 4-nova/hosts.ini
ansible-playbook 5-neutron/neutron.yaml -i 5-neutron/hosts.ini
ansible-playbook 6-horizon/horizon.yaml -i 6-horizon/hosts.ini
ansible-playbook 7-Lab/site.yaml -i 7-Lab/hosts.ini
ansible-playbook 7-Lab/demo.yaml -i 7-Lab/hosts.ini

ansible-playbook 8-vlan_network/vlan_network.yaml -i 8-vlan_network/hosts.ini  
ansible-playbook 8-vlan_network/demo.yaml -i 8-vlan_network/hosts.ini ## failed