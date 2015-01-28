#!/bin/bash
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
if [ "$[$(date +%s) - $(stat -c %Z /var/lib/apt/periodic/update-success-stamp)]" -ge 600000 ]; then
  sudo apt-get update
fi
sudo apt-get install zsh tmux tig
chsh -s /usr/bin/zsh

for file in tmux.conf vimrc gitconfig zshrc; do
  ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim; do
  test -d ~/.$dir/ || ln -sf "$(pwd)/$dir/" ~/.$dir
done
