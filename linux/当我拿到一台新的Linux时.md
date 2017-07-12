# 前言
程序员最头痛的估计就是配置环境了。每当我拿到一台新的机器时，总时需要花不少时间来配置自己惯用的Linux环境，这个过程非常痛苦，所以特地记录汇总一下配置脚本。

# Zsh
`zsh`依赖于`git`，所以需要先安装`git`。另外就是`oh-my-zsh` `autojump`这些也是必装的

```
yum install zsh -y;
yum install git -y;
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
yum install autojump-zsh -y;
sed -i "s/plugins=(git)/plugins=(git autojump)/g" ~/.zshrc
chsh -s /bin/zsh

```

# Docker
```
yum install docker -y
service docker start

```