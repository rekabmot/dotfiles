export CC=/usr/local/bin/gcc-4.2
export CXX=/usr/local/bin/g++-4.2
export PATH=$HOME/bin:$PATH
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  export GIT_PS1_SHOWDIRTYSTATE=true
  source ~/.git-prompt.sh
fi

export PS1="\e[92m\u@\h \e[93m\w\e[92m\$(__git_ps1) $ \e[0m"

alias ls="ls -l -G"
alias be="bundle exec"
alias ber="bundle exec rake"



