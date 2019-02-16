export LC_ALL="en_US.UTF-8"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="blinks"
plugins=(git zsh-autosuggestions)
setopt autocd 

source $ZSH/oh-my-zsh.sh
stty -ixon #let vim receive <C-S>
source ~/dotfiles/zsh/z.sh
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/share/npm/bin/
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export EDITOR=vim
alias vp="vagrant provision"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias c=clear
alias s=gst
alias ta="tig --all"
alias e=vim
alias se="sudo vim"
alias tm="tmux new-session -s"
alias t="tree -C"
alias j='cd ~/xamarin/src/$(ls ~/xamarin/src/ | selecta)'
alias nn='~/journals/dumbscripts/new_note'
function chpwd() {
    emulate -L zsh
    l
}
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
#export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export PATH="/usr/local/sbin:$PATH"

#Disable auto title to allow Timings.app to track working directory
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD}\007"
  echo -ne "$window_title"
}
