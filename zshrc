[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

export PATH=~/bin:~/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:~/.cargo/bin:~/.local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM=$HOME/.zsh/custom
export ZSH_THEME="zxmth"
export PASSWORD_STORE_GPG_OPTS="--no-throw-keyids"

autoload -U colors && colors

plugins=(
  git
  zsh-nvm
  autojump
  fzf
)

export NVM_LAZY_LOAD=true

source $ZSH/oh-my-zsh.sh

# Functions & Aliases
s() {
  cd ~/src/$(ls ~/src | fzf)
}

# search git log with fzf
gcz() {
  git log --oneline | fzf
}

# print commit hash for selected commit
gczc() {
  gcz | awk '{print $1}'
}

# diff HEAD against selected commit
gczd() {
  git diff $(gczc)
}

# diff two selected commits
gczdd() {
  git diff $(gczc) $(gczc)
}

# fzf the branches!
gczb() {
  git checkout $(git for-each-ref --format='%(refname:short)' refs/heads/ | fzf)
}

secret () {
  output="$(realpath ${1}).$(date +%s).enc"
  gpg --encrypt --armor --output ${output} -r z@xmyth.me "${1}" && echo "${1} -> ${output}"
}

reveal () {
  output=$(echo "${1}" | rev | cut -c16- | rev)
  gpg --decrypt --output ${output} "${1}" && echo "${1} -> ${output}"
}

# Use GPG for ssh-agent if configured
if [ -S $(gpgconf --list-dirs agent-ssh-socket) ]; then
  export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh
fi

# i put machine specific stuff in ~/.localconfig
[[ -a $HOME/.localconfig ]] && source $HOME/.localconfig || true
