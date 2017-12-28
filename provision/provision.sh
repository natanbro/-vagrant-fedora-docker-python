###  #   ! /usr/bin/env bash
#
dnf install -y mc
dnf install -y tmux
dnf install -y lynx
#
su -c 'mkdir /home/vagrant/repos' vagrant
cd /home/vagrant/repos
#
su -c 'git clone http://github.com/natanbro/my_dot_files.git /home/vagrant/repos/my_dot_files' vagrant
cd /home/vagrant/repos/my_dot_files
su -c 'cd /home/vagrant/repos/my_dot_files && source /home/vagrant/repos/my_dot_files/install.sh' vagrant
#
dnf install -y fzf
#
dnf install -y docker
#
pip install docker-compose

