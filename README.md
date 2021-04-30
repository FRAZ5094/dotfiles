# dotfiles
## Install
```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
mkdir -p ~/dotfiles
git clone --bare https://github.com/FRAZ5094/dotfiles $HOME/dotfiles
```
### Backup (optional)
```
mkdir -p $HOME/.config-backup && config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```
```
config checkout
config config --local status.showUntrackedFiles no
```

## Do stuff
```
config status
config diff
config add /path/to/file
config commit -a
```
## Install zsh, oh-my-zsh and p10k
```
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install fonts-hack-ttf -y
```
