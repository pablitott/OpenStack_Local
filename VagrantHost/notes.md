code to include ansible into vagrant
````vagrant
        nodeconfig.vm.provision "ansible_local" do |ansible|
          # https://stackoverflow.com/questions/49549698/vagrant-provision-multiple-playbooks-with-multiple-ssh-users
          ansible.playbook = "/home/vagrant/ansible/playbooks/installApache.yml"
          ansible.config_file="/home/vagrant/ansible/ansible.cfg"
          # ansible.inventory_path = "inventory"
          ansible.install = true
          ansible.groups = {
            "nodes"    => ["rhSlave1", "rhSlave2"],
            "manager"  => ["rhManager"],
            "database" => ["rhDatabase"]
          }
        end

````
commands
````bash
ssh 192.168.100.11 -i ~/.vagrant/machines/controller/virtualbox/private_key
source admin-openrc

````
to install Install ubuntu cloud keyring wnable proxy on line 76
    use_apt_proxy == False => True