# 1. 安装zsh

## 1.1. for mac

```bash
brew install zsh
```

## 1.2. for centos

```bash
sudo yum -y install zsh
# 将默认shell改为zsh
chsh -s /bin/zsh

# 查看支持的shell
cat /etc/shells
```

# 2. 安装Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 或
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 2.1. theme

修改`~/.zshrc`主题参数。

推荐主题：

- amuse
- agnoster

```bash
ZSH_THEME="amuse"
```

更多主题：

https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes

## 2.2. [Powerline fonts](https://github.com/powerline/fonts)

```bash
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

# 3. 安装Oh My Zsh插件

## 3.1. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

安装插件

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

在`~/.zshrc`添加插件

```bash
plugins=( [plugins...] zsh-syntax-highlighting)
```

## 3.2. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

安装插件

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

在`~/.zshrc`添加插件

```bash
plugins=( [plugins...] zsh-autosuggestions)
```

## 3.3. [autojump](https://github.com/wting/autojump)

yum 安装

```bash
# for mac
brew install autojump

# for centos
yum install -y autojump-zsh
```

源码安装

```bash
git clone git://github.com/wting/autojump.git

cd autojump
./install.py or ./uninstall.py
```

在`.zshrc`中添加一下内容

```bash
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
```





参考：

- https://github.com/ohmyzsh/ohmyzsh