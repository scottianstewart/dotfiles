[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into $

# Git branch in prompt.

parse_git_branch() {

   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="[\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]] $ "

export PATH=/usr/local/bin:$PATH

  export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

export NVM_DIR="/Users/Scott/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 6

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias dc='docker-compose'
