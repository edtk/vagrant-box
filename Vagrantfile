# Ubuntu 18.04

# Vagrant version
Vagrant.configure("2") do |config|
  
  # Base image (Ubuntu 18.04)
  config.vm.box = "ubuntu/bionic64"
  
  # Disable updates
  config.vm.box_check_update = false

  # Start initial script
  config.vm.provision "shell", path: "bootstrap.sh"

  # Forward ports 
  # In this box we forward standart ports for HTTP (80) and HTTPS (443)
  config.vm.network "forwarded_port", host: 80, guest: 80, id: "http"
  config.vm.network "forwarded_port", host: 443, guest: 443, id: "https"
  
  # Sync folders
  # config.vm.synced_folder "path/to/your/project/on/your/local/machine", "path/to/your/project/inside/box"
  
  # Show message after a successful run
  config.vm.post_up_message = "Virtual machine is ready to work!"
end