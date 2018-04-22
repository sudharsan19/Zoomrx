# Zoomrx Code Challenge 

Step 1: git clone this repository 

Step 2: Install Vagrant 
" ansible-playbook -i inventory install_vagrant.yml "

Step 3: Install Vagrant Plugin for Timezone 
" vagrant plugin install vagrant-timezone "

Step 4: Make sure you have ansible installed on the base machine 

Step 5: go to zoomrx-app-vm1 directory and run "vagrant up" 

Step 6:  browse http://192.168.33.15

Note: 
Ansible Roles Created for provisioning with vagrant 
role name : ansible-role-provision

Added the user - zoomapp (non-privileged user) for running the app

cron job configured for boot level startup for the app using zoomapp user and also scheduler for checking the process and re-run again if the process is killed or dead. 
