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

#export PS1="\e[92m\]\u@\h \e[93m\w\e[92m\$(__git_ps1) $ \e[0m"
export PS1="\[$(tput setaf 2)\]\u@\h\[$(tput setaf 3)\] \w\[$(tput setaf 2)\]\$(__git_ps1) $\[$(tput sgr0)\] "
alias ls="ls -o -G"
alias be="bundle exec"
alias ber="bundle exec rake"

alias gac="cd /Users/tom.baker/dev/sage_one_advanced"
alias gacuk="cd /Users/tom.baker/dev/sage_one_gac_uk"
alias gacus="cd /Users/tom.baker/dev/sage_one_gac_us"


