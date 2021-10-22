# dotfiles
## Install
```
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
mkdir -p ~/dotfiles
git clone --bare https://github.com/FRAZ5094/dotfiles $HOME/dotfiles
```
### Backup (optional)
```
mkdir -p .config-backup && config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```
### Install zsh, oh-my-zsh and p10k
```
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install fonts-hack-ttf -y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### add to ~/.zshrc:
```
ZSH_THEME='powerlevel10k/powerlevel10k'
```
```
p10k configure
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```
```
config checkout
config config --local status.showUntrackedFiles no
```
### Missing stuff
```
tmux source ~/.tmux.conf
shift b + I
sudo apt-get install ruby-full
gem install colorls
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

## Do stuff
```
config status
config diff
config add /path/to/file
config commit -a
config push
```
## Pinyin
```
sudo pacman -Syu fcitx fcitx-googlepinyin fcitx-im fcitx-configtool
vim /etc/environment
paste:
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

git clone https://aur.archlinux.org/noto-fonts-sc.git
cd noto-fonts-sc
makepkg -si

git clone https://aur.archlinux.org/fcitx-sogoupinyin.git
cd fcitx-sougoupinyin
makepkg -si
```
