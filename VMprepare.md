# Prepare the virtual Environment to handle OpenStack
VM Inventory

## Virtual Box Image
- box: "ubuntu/bionic64"
- box_version: "20220131.0.0"

## Vagrant Host
Is the personal machine in Windows, here is where we run the scripts to create the OpenStacks VM

----

## AnsibleHost  
Is a special machine to runs Vagrabnt using Vagrantfile and servers.yaml
   VM Name: AnsibleHost
 Full Name: AnsibleHost.local
IP Address: 192.168.56.100
    Memory: 6,144
     CPU's: 1

----
## OpenStack Servers
* Follwing information is saved and used in servers.yaml file

|Server Name| Full Name      |IP Address                        |Memory|cpus|Notes|
|-----------|----------      |----------                        |---   |--- |-    |
|controller |controller.local|192.168.100.11 <br>172.16.0.2     |6,144 |2   | * See Note  |
|compute1   |compute1.local  |192.168.100.21 <br/>172.16.0.3    |4,096 |2   |-    |
|compute2   |compute2.local  |192.168.100.22 <br/>172.16.0.4    |4,096 |2   |-    |
|network    |network.local   |192.168.100.23 <br/>192.168.187.12|4,096 |2   |change to the<br/>same range as 172|
|storage    |network.local   |192.168.100.31                    |2,048 |2   |-    |

> * controller must be able to support virtual machines, 
> to do this you have to enable Nested Virtualization see figure below

![VM Nested Virtualization](./VagrantHost/Enable-nested-virtualization-in-virtualbox-manager.png)

Enable Nested Virtualization has been automated in using:
  > customize ["modifyvm", :id, "--nested-hw-virt", "on ]

Ansible Host must be create at the end and everytime a new machine is incirporated it must be provisioned again 
using
> vagrant provision AnsibleHost 
----

## AnsibleHost provision
1. Pre-requisites
    AnsibleHost must be provioned to install the basic software required to use OpenStack as:
    * python3-pip
    * ansible==v2.8.6
    * pwgen
    * apt-cacher-ng -y
    Defined in [bootstrap.ah](./VagrantHost/bootstrap.sh) file and executed with root permisions
2. Mount the directory ./AnsibleHost to the VM
3. ssh config file
    ssh-config is the ssh configuration file existing in ~/.ssh [SSH config](./VagrantHost/ssh-config) allow AnsibleHost to connect with the OpenStack machines via ssh.
    it contains the information for the ssh-keys location for each of the VMs
    Every time you include a new machine this file must me updated
4. Copy all the private ssh keys created by vagrant to the AnsibleHost
----
## Create Infrastructure
1. Execute Vagrant up to create all the VMs defined in servers.yml and AnsibleHost *
2. Verify the access to the VMs infraestructure is well configured as:
    Login into AnsibleHost and go to AnsibleHost dir
````bash
    cd AnsibleHost
    ./scripts/pinghosts.sh 

compute1 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
network | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
compute2 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
controller | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
````




    
