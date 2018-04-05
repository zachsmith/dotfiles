if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
## [[ -s /Users/zach/.nvm/nvm.sh ]] && . /Users/zach/.nvm/nvm.sh # This loads NVM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
