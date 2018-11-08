export PATH=~/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$PATH

source ~/.bash/colors
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# git prompt goodnes
# load /etc for Ubuntu and /usr/share for Fedora
[[ -s ~/.git-prompt.sh ]] && source ~/.git-prompt.sh # MacOS
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=verbose
PS1="${COLOR_RED}[${COLOR_WHITE}\h:\w${COLOR_GREEN}\$(__git_ps1 ' (%s)')${COLOR_RED}]${COLOR_NONE}\$ "

# load autojump if available
[[ -s "/usr/share/autojump/autojump.sh" ]] && source /usr/share/autojump/autojump.sh

function name_tab() {
  echo -ne "\033]0;$1\007"
}

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Check window size after commands in case it has changed
shopt -s checkwinsize

source ~/.bash/functions
source ~/.bash/aliases

# disable flow control (ctrl-s)
# first, make sure shell is interactive to avoid 'Inappropriate ioctl'
# messages from things like scp, git+ssh, etc
if [[ $- == *i* ]]
then
  stty -ixoff
  stty stop undef
  stty start undef
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

export EDITOR="vim"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.localconfig" ]] && source "$HOME/.localconfig"
