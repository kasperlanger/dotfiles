git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh

for file in ctags tmux.conf vimrc gitconfigi zshrc; do
  ln -sf "$(pwd)/$file" ~/.$file
done

for dir in vim; do
  test -d ~/.$dir/ || ln -sf "$(pwd)/$dir/" ~/.$dir
done

cd ~/.vim/bundle/command-t
rake make
