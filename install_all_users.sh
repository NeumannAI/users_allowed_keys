#!/bin/bash
for dir in */ ; do
USER=${dir::-1}
./install_users.sh $USER
usermod -aG docker $USER
done

# Always sudo users
usermod -aG sudo anton
usermod -aG sudo hb

host=`hostname`
#if [ $host == 'bdd3' ]; then # bdd3 sudo users
#    usermod -aG sudo bala
#fi
#if [ $host == 'bdd4' ]; then # bdd4 sudo users
#    usermod -aG sudo aga
#fi
#if [ $host == 'bdd5' ]; then # bdd4 sudo users
#    usermod -aG sudo ehou
#fi

sudo add-apt-repository -y ppa:git-core/ppa
#sudo add-apt-repository -y ppa:neovim-ppa/unstable
#sudo add-apt-repository -y ppa:jonathonf/python-3.6        
sudo apt-get -y update
#sudo apt-get -y install neovim tmux zsh highlight python3.6  python3.6-dev python3.6-venv xsel git
