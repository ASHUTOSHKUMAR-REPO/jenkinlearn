#!/bin/bash
 
# Download Jenkins key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
 
# Add Jenkins repository to sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
 
# Update package list
sudo apt-get update
 
# Install Jenkins
sudo apt-get install -y jenkins
 
# Install dependencies (optional)
sudo apt update
sudo apt install -y fontconfig openjdk-17-jre
 
# Verify Java version
java -version
 
# Start Jenkins service and enable it at boot
sudo systemctl enable jenkins
sudo systemctl start jenkins
 
# Check Jenkins service status
sudo systemctl status jenkins
