typeset -U path
path=(~/.nvm/versions/node/v19.3.0/bin ~/bin /usr/local/bin /usr/local/sbin /opt/local/bin /opt/local/sbin ~/.local/bin /lib/jvm/default/bin $path)
 
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM=$HOME/.zsh/custom
export ZSH_THEME="zxmth"
export PASSWORD_STORE_GPG_OPTS="--no-throw-keyids"
export NVM_LAZY_LOAD=true
