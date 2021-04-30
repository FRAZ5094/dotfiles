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

## Add files
