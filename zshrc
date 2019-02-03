export PATH=~/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:~/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:~/.git-radar:$PATH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM=~/.zsh/custom
export ZSH_THEME="zxmth"

autoload -U colors && colors

plugins=(git)

source $ZSH/oh-my-zsh.sh
