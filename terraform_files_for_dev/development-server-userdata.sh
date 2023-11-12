#! /bin/bash
#!/bin/bash

# Update the package list and upgrade installed packages
sudo apt update
sudo apt upgrade -y

# Set the hostname (if needed)
# hostnamectl set-hostname Development-Server

# Install Docker
# Note: You might want to install Docker using the official Docker documentation for Ubuntu.
# The following commands are for demonstration purposes and may not cover all installation options.
sudo apt install docker.io -y

# Start and enable the Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the Docker group (avoid using 'ec2-user' on Ubuntu)
sudo usermod -aG docker $(whoami)

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Git
sudo apt install git -y

# Install OpenJDK (Java 11, Corretto)
sudo apt install openjdk-11-jdk -y

# Clone your Git repository
git clone https://github.com/kayla1000/complete_project.git

# Change to the project directory
cd complete_project

# Create and switch to the 'dev' branch
git checkout dev



# # use this for amazon linux ami
# yum update -y
# hostnamectl set-hostname Development-Server
# amazon-linux-extras install docker -y  # if amazon linux ami is used
# systemctl start docker
# systemctl enable docker
# usermod -a -G docker ec2-user
# curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" \
# -o /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
# yum install git -y
# yum install java-11-amazon-corretto -y
# git clone https://github.com/kayla1000/complete_project.git
# cd microservices-with-db-on-dev-server
# git checkout dev