#!/usr/bin/env bash

if [ -d "/home/vagrant/.oh-my-zsh" ]; then
    echo "*** Updating git repo"
    $CURR=$(pwd);
    cd "/home/vagrant/.oh-my-zsh"
    git pull
    cd "${CURR}"
else
    echo "*** Cloning git repo"
    git clone --v git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
fi

echo "*** Copying zsh config"
cp -vf /vagrant/config/oh-my-zsh.sh /home/vagrant/.zshrc

echo "*** Setting zsh as default shell"
rm -rf /etc/*.lock
usermod -s /usr/bin/zsh "vagrant"
