# Ubuntu 20.04

# Vagrant version
Vagrant.configure("2") do |config|
  # Base image (Ubuntu 20.04)
  config.vm.box = "ubuntu/focal64"
  
  # Hostname
  config.vm.hostname = "ubuntu"

  # Disable updates
  config.vm.box_check_update = false

  # Start initial script
  config.vm.provision "shell", path: "bootstrap.sh"

  # Provider
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  # Forward ports 
  # In this box we forward standard ports for HTTP (80) and HTTPS (443)
  config.vm.network "forwarded_port", host: 80, guest: 80, id: "http"
  config.vm.network "forwarded_port", host: 443, guest: 443, id: "https"
  config.vm.network "forwarded_port", host: 5432, guest: 5432, id: "postgres"
  
  # Sync folders
  # config.vm.synced_folder "path/to/your/project/on/your/local/machine", "path/to/your/project/inside/box"

  # Show message after a successful run
  config.vm.post_up_message = "Virtual machine is ready to work!"
end
