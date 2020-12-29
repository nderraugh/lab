# An Ansible repository for a microk8s cluster lab
This repository has tools in it to help bootstrap a [Raspberry Pi] [microk8s](https://microk8s.io/) cluster.  There are [Ansible](https://www.ansible.com/) playbooks that automate the process.  I am probably breaking all kinds of idiomatic usage because I am learning as I am doing.  Feel free to reach out with suggestions, or to point out where I am breaking the rules.

## Pre-requisites
Four pis -- I bought the 8gb pi 4 from https://www.buyapi.ca/ -- w/ MAC addresses associated to IPs on the router reflected in the inventory file.  I chose 192.168.12.{60-63} on my network which is reflected in the inventory file.  The machines have Ubuntu server 20.04 LTS 64-bit intalled on them.

Install Ansible.

Install [pass: the standard unix password manager](http://passwordstore.org).

Install the `community.general` ansible collection with 
```
ansible-galaxy collection install community.general
```

### Procedure
Details about each step in the procedure are in each section.

1. Add fingerprints to `known_hosts`.
1. Add a password for the pi hosts to the passwordstore.
1. Set default passwords.
1. Set default ssh keys.
1. Update Ubuntu packages.
1. Set cgroups.
1. Update hostnames.
1. Install microk8s on each node.
1. Join workers to the cluster.

### Main method
```
ansible-playbook -i ./inventory/hosts playbooks/main.yml -e "ansible_password='$(pass ubuntu)'" -e "passwordstore_ubuntu_pass='$(pass ubuntu)'"
```

### Add fingerprints to known_hosts
After installing Ubuntu and booting the Pis run `./add_fingerprints.sh` which will add the ssh fingerprints to your `known_hosts` file.  This script is not idempotent, so don't run it more than once without cleaning out your `known_hosts` file first.

TODO make this a playbook and delegate_to localhost.

### Add a password for the pi hosts to the passwordstore
TODO, see https://nderraugh.github.io/

### Set default passwords
Ubuntu 20.04 for the Pi that is available through the Raspberry Pi Imager ships with an expired password forcing you to reset your password the first time you login.

### Set default ssh keys
sshpass is a security risk if you misuse it.

### Update Ubuntu packages

### Set cgroups

### Update hostnames

### Install microk8s on each node

### Join workers to the cluster

