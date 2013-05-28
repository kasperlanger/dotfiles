export LC_ALL="en_US.UTF-8"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/dotfiles/zsh/z.sh
export ANDROID_HOME=/Applications/adt/sdk
export PATH=$PATH:/Applications/adt/sdk/platform-tools
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export EDITOR=vim
alias vp="vagrant provision"
alias vu="vagrant up"
alias vs="vagrant ssh"
