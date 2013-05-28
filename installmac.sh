ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
brew doctor
brew install git
brew install tig
brew install tree

#RUBY
brew install ruby-build
brew install rbenv
rbenv install 2.0.0-p195 
rbenv global 2.0.0-p195

#VIM
brew install vim:
mv /usr/bin{vim,vim_osx}

#CASK
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install google-chrome
brew cask install adium
brew cask install virtualbox
brew cask install vagrant

#TMUX
brew install tmux
gem install tmuxinator
brew install reattach-to-user-namespace

