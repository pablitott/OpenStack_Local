#/bin/bash
sites=("Lab1" "Lab6" )

demos=("Lab7" "Lab8")
# "1-infrastructure" "2-keystone" "3-glance" "4-nova" "5-neutron" "6-horizon" "7-Lab" "8-vlan_network"
# note Lab1 fail install, run the script twice

for site in ${sites[@]}
do
    if [ -f $site/site.yaml ]; then
        echo "executing $site/site.yaml"
        ansible-playbook $site/site.yaml -i $site/hosts.ini
        if [  $? != 0  ]; then
            exit 1
        fi
    fi
    if [ -f $site/demo.yaml ]; then
        ansible-playbook $site/demo.yaml -i $site/hosts.ini
        if [  $? != 0  ]; then
            exit 1
        fi
    fi
done
exit 0
