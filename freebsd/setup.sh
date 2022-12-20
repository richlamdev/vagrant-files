#!/bin/bash

# remove previous host keys, if any
ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "192.168.60.50"

#
# Notes:
# 1) This is for ephemeral FreeBSD vagrant machines
# 2) This is not for production
# 3) Normal users should be provisioned access via SSH key, after python3 is installed on FreeBSD
# 4) The root user password should be much longer and complex!

# add vagrant user to the wheel group, to allow for su commands.
# set root password to: password1
# this is VERY insecure, obviously.  For testing purposes only!!
# this is done to emulate a standalone installation of FreeBSD to issue commands with su instead of sudo

ssh vagrant@192.168.60.50 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'sudo pw usermod vagrant -G wheel && echo -e "password1\npassword1" | sudo passwd root'

#uncomment to remove vagrant wheel group
#ssh vagrant@192.168.60.50 -i ~/.vagrant.d/insecure_private_key -o "StrictHostKeyChecking no" 'sudo pw groupmod wheel -d vagrant'
echo

exit 0
