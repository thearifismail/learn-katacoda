yum reinstall ca-certificates -y
systemctl stop NetworkManager
rm /usr/lib/systemd/system/NetworkManager.service

mkdir ~/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCqogWTBOZvsLcz7Zxz7i4+Z00WA01Y+xpNsvUiC6bkB8F4PhuVkKMn+ww7F/UtLcQ9qO6U1K8f5FpkDmeQQLvV7uYCnG7X63ia+njPgF8euF5rpWvmjG5Zz/6gLGf8+wFNC4yXyjU7G7Vce59/JdbaPUdOmA3aL2WKMxoea/IDOTEAORFcyMLNNJdy0yYNxLfEl7w3IY12po/cPb2VKeqJqi3UqwJroDYjCOt5fS4Fp0tvzvbiXP8+nbhd0uTTEkgtl3/FU0ozQBAHgO6UlbSV1sJEIjZG+543FtRfV0tbmUyT7+N0NGOZYJ3FQ1B/MrP6H8O/8YhiaQDLwkL5zhxPqW9cyAZw207uZbM26ohfCQUMmFoYJ9fBA/dt7aXbw5rb0lihFYZMq94NUi3ABLDBEsT9J5+mJomdlUHDwHxztcjO8JnThP5iBcYmNiqAnhbn71Avr8Zz1vHVP0TFC8f40NnK/A7nwTQw0aQ+H0u+EGrx+2gVmSUlwQyDDUlHJpEI0IefWtdmBqYvMyfVDf8SGSolkcXUJxX63iCFEyPMyMLUWLbPcwRhlUn6G6NVDI6sLwfveeXFJppuSMx+Wqc3ZmyEHIj/mVuEuygVke3Bd4/v8e4o6adR93yF/Fuq0Q0bMhgf2xCwVFSaqlta/o5m0wMNwCO3NuDLCZjIFj3+vw== course@katacoda.com' >> ~/.ssh/authorized_keys

yum install vim emacs git sudo -y
touch ~/.hushlogin

adduser cent
echo "cent" | passwd cent --stdin
touch /home/cent/.hushlogin
mkdir /home/cent/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCqogWTBOZvsLcz7Zxz7i4+Z00WA01Y+xpNsvUiC6bkB8F4PhuVkKMn+ww7F/UtLcQ9qO6U1K8f5FpkDmeQQLvV7uYCnG7X63ia+njPgF8euF5rpWvmjG5Zz/6gLGf8+wFNC4yXyjU7G7Vce59/JdbaPUdOmA3aL2WKMxoea/IDOTEAORFcyMLNNJdy0yYNxLfEl7w3IY12po/cPb2VKeqJqi3UqwJroDYjCOt5fS4Fp0tvzvbiXP8+nbhd0uTTEkgtl3/FU0ozQBAHgO6UlbSV1sJEIjZG+543FtRfV0tbmUyT7+N0NGOZYJ3FQ1B/MrP6H8O/8YhiaQDLwkL5zhxPqW9cyAZw207uZbM26ohfCQUMmFoYJ9fBA/dt7aXbw5rb0lihFYZMq94NUi3ABLDBEsT9J5+mJomdlUHDwHxztcjO8JnThP5iBcYmNiqAnhbn71Avr8Zz1vHVP0TFC8f40NnK/A7nwTQw0aQ+H0u+EGrx+2gVmSUlwQyDDUlHJpEI0IefWtdmBqYvMyfVDf8SGSolkcXUJxX63iCFEyPMyMLUWLbPcwRhlUn6G6NVDI6sLwfveeXFJppuSMx+Wqc3ZmyEHIj/mVuEuygVke3Bd4/v8e4o6adR93yF/Fuq0Q0bMhgf2xCwVFSaqlta/o5m0wMNwCO3NuDLCZjIFj3+vw== course@katacoda.com' >> /home/cent/.ssh/authorized_keys
echo 'cent    ALL=(ALL)       NOPASSWD: ALL' >>  /etc/sudoers
