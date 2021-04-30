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

## Do stuff
```
config status
config diff
config add /path/to/file
config commit -a
config push
```

