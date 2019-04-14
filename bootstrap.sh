# Update packages
sudo apt-get update

# Install Git
sudo apt-get install git -y
echo "Git successfully installed!"

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
echo "Docker successfully installed!"

# Create group docker and add to "docker" group user vagrant
sudo usermod -aG docker vagrant

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "Docker Compose successfully installed!"

# Install Node.js
# curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
# sudo apt install nodejs -y
# echo "Node.js successfully installed!"

# Show message about successfully install
echo "Everything done, have a nice day!"