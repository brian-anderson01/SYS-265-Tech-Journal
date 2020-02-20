#secure-ssh.sh
#author brian.anderson01
#creates new ssh user using $l parameter
#adds public key fom the local repo or curled from remote repo
#removes roots ablility to ssh in
echo "code goes here"
sudo useradd -m -d /home/sys265 -s /bin/bash sys265
sudo mkdir /home/sys265/.ssh
sudo cp ~/SYS-265-Tech-Journal/linux/public-keys/id_rsa.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh
