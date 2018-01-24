#!/bin/bash
sudo apt-get update
sudo apt-get -y install curl

# create staging directories
if [ ! -d /drop ]; then
sudo  mkdir /drop
fi
if [ ! -d /downloads ]; then
sudo  mkdir /downloads
fi

# download the ChefDK package
if [ ! -f /downloads/chefdk_2.3.1-1_amd64.deb  ]; then
  echo "Downloading the ChefDK"
sudo  wget -nv -P /downloads https://packages.chef.io/files/stable/chefdk/2.3.1/ubuntu/14.04/chefdk_2.3.1-1_amd64.deb
fi

# install ChefDK
if [ ! $(which chef-server-ctl) ]; then
  echo "Installing ChefDK ..."
sudo  dpkg -i /downloads/chefdk_2.3.1-1_amd64.deb
fi

#if [ ! $(which kitchen) ]; then
#  echo "Installing Chefdk..."
#  sudo wget -nv -P /downloads https://packages.chef.io/files/stable/chefdk/2.4.17/ubuntu/16.04/chefdk_2.4.17-1_amd64.deb
#  sudo  dpkg -i /downloads/chefdk_2.4.17-1_amd64.deb
#fi

#Install bundler
sudo apt-get install bundler -y
echo "Installed bundler"

#Install docker-ce from docker.com
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y

echo "Docker installed"



echo "Your Chef client is ready!"

