#!/bin/bash

# remove previous host keys, if any
ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "192.168.60.50"
#ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "192.168.13.202"

# set root password to: password123.
# this is VERY insecure, obviously.  For testing purposes only!!
#
# Notes:
# 1) This is for ephemeral FreeBSD vagrant machines
# 2) This is not for production
# 3) Normal users should be provisioned access via SSH key, after python3 is installed on FreeBSD
# 4) The root user password should be much longer and complex!
ssh vagrant@192.168.60.50 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'echo -e "password1\npassword1" | sudo passwd root'
ssh vagrant@192.168.60.50 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'sudo pw usermod vagrant -G wheel'
#ssh vagrant@192.168.13.202 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'echo -e "password1\npassword1" | sudo passwd root'
#ssh vagrant@192.168.13.210 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'echo -e "password1\npassword1" | sudo passwd root'

exit 0
