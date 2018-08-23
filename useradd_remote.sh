##########################################################
# This script adds user on a remote server makes its home directory creates a .ssh folder and copies the public key from local to remote server /home/user/.ssh folder 
#so that the user is able to login via username using key 

## to Run the script from local 
## bash -xv useraddscript.sh  ##
## ssh @<server_ip> -i <private_key_file>  ##


#!/bin/bash

echo "Provide username"
read a

echo "Provide server Details"
read b
cat <path to the file which includes key> | ssh ubuntu@$b "sudo useradd -m -d /home/$a -s /bin/bash $a; sudo mkdir /home/$a/.ssh ; sudo chown -R $a:$a /home/$a/.ssh ; sudo tee -a /home/$a/.ssh/authorized_keys"

