#!/bin/bash
#secure-ssh.sh
#author brian.anderson01
#creates new ssh user using $l parameter
#adds public key fom the local repo or curled from remote repo
#removes roots ablility to ssh in
read -p "Enter the name of the new user: " uservar
echo "Creating user $uservar"
sleep 1
sudo useradd -m -d /home/$uservar -s /bin/bash $uservar
sudo mkdir /home/$uservar/.ssh
sudo cp ~/SYS-265-Tech-Journal/linux/public-keys/id_rsa.pub /home/$uservar/.ssh/authorized_keys
sudo chmod 700 /home/$uservar/.ssh
sudo chmod 600 /home/$uservar/.ssh/authorized_keys
sudo chown -R $uservar:$uservar /home/$uservar/.ssh
