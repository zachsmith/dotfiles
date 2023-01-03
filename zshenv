typeset -U path
path=(
  ~/.nvm/versions/node/v19.3.0/bin
  ~/bin
  /usr/local/bin
  /usr/local/sbin
  /opt/local/bin
  /opt/local/sbin
  ~/.local/bin
  /lib/jvm/default/bin
  $path
)
 
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM=$HOME/.zsh/custom
export ZSH_THEME="zxmth"
export PASSWORD_STORE_GPG_OPTS="--no-throw-keyids"
export NVM_LAZY_LOAD=true

# Use GPG for ssh-agent if configured
if [ -S $(gpgconf --list-dirs agent-ssh-socket) ]; then
  export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh
fi