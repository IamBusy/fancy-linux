yum install zsh -y;
yum install git -y;
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
yum install autojump-zsh -y;
sed -i "s/plugins=(git)/plugins=(git autojump)/g" ~/.zshrc
chsh -s /bin/zsh