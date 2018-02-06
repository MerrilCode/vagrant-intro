# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  
	config.vm.define "app" do |app|
  
	  app.vm.box = "ubuntu/xenial64"
	  app.vm.network "private_network", ip: "192.168.10.100"
	  app.hostsupdater.aliases = ["dev.local"]
	  # Synced app folder
	  app.vm.synced_folder "app", "/home/ubuntu/app"
	  app.vm.provision "chef_solo" do |chef|
	  	chef.add_recipe "node::default"
	  end
	  # app.vm.synced_folder "environment/app/variables", "/home/ubuntu/variables"
	  #provision
	  # app.vm.provision "shell", path: "environment/app/provision.sh"
	  
	end

	config.vm.define "db" do |db|
		db.vm.box = "ubuntu/xenial64"
	    db.vm.network "private_network", ip: "192.168.10.150"
	    db.hostsupdater.aliases = ["database.local"]
		# db.vm.synced_folder "environment_bak/db", "/home/ubuntu/db"
	 #    db.vm.provision "shell", path: "environment/db/provision.sh", privileged: false
	 db.vm.provision "chef_solo" do |chef|
	 	chef.add_recipe "db::default"
	 end
	end
end
