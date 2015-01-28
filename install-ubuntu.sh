git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
sudo apt-get install zsh
chsh -s /usr/bin/zsh

for file in tmux.conf vimrc gitconfig zshrc; do
  ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim; do
  test -d ~/.$dir/ || ln -sf "$(pwd)/$dir/" ~/.$dir
done
