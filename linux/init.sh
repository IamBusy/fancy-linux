sudo yum install -y zsh git;
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
sudo yum install autojump-zsh -y;
sed -i "s/plugins=(git)/plugins=(git autojump)/g" ~/.zshrc
chsh -s /bin/zsh


sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker