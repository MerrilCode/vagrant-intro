# vagrant-intro

## Installation
Install the latest version of [Vagrant](https://www.vagrantup.com/downloads.html ) 

Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) for your machine

Once both Vagrant and VirtualBox is installed follow these steps on the command line in your local machine inside the directory where you want to run virtual instance. Numbers in the list below with italic fonts are commands to be written on the terminal.

1. *vagrant init ubuntu/xenial64*
2. open the newly created **Vagrantfile** in a text editor
3. Remove all the lines and put these lines:

	>  # -*- mode: ruby -*-
	
	>  # vi: set ft=ruby :
	
	> Vagrant.configure("2") do |config|
	
	>  config.vm.box = "ubuntu/xenial64"
	
	> config.vm.network "private_network", ip: "192.168.10.100"
	
  	> config.hostsupdater.aliases = ["dev.local"]
	
	>  end
4. *vagrant plugin install vagrant-hostsupdater*
5. *vagrant up*
6. *vagrant ssh*

Once inside the guest machine

6. *sudo apt-get update -y*
7. *cd /home/ubuntu*
8. *sudo apt-get install nginx -y*

Now you can

 Added webhook from github

 Trying develop branch
 New project testing
 
 
 
 
 



