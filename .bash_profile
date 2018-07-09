export PATH=$HOME/bin:$PATH

export GEM_SERVER=http://sageone:onesalviaofficinalisone@gems.platform.sageone.com

export MYSQL_USERNAME=root
export MYSQL_PASSWORD=admin
export CARBON_ADDRESSES_ENABLED=true
export GAC_APP_REGION=ukie
export REDIS_HOST=localhost

alias vim=/usr/local/bin/vim
alias vi=/usr/local/bin/vim

export GAC_GATEWAY_SERVICE_ENABLED=true
export CBC_MODE=false
export BASE_URL=http://mysageone.lvh.me:3000

export EDITOR=vim

export ENVIRONMENT=development

eval "$(rbenv init -)"
eval "$(hub alias -s)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/dotfiles/.git-completion.bash ]; then
  . ~/dotfiles/.git-completion.bash
fi

if [ -f ~/dotfiles/.git-prompt.sh ]; then
  export GIT_PS1_SHOWDIRTYSTATE=true
  source ~/dotfiles/.git-prompt.sh
fi

#export PS1="\e[92m\]\u@\h \e[93m\w\e[92m\$(__git_ps1) $ \e[0m"
export PS1="\[$(tput setaf 2)\]\u@\h\[$(tput setaf 3)\] \w\[$(tput setaf 2)\]\$(__git_ps1) $\[$(tput sgr0)\] "
alias ..="cd .."
alias ls="ls -o -G"
alias be="bundle exec"
alias ber="bundle exec rake"
alias less="less -r -f"
alias ss="be rails s"
alias thin="be thin start --threaded"
alias rjw="be rake jobs:work"
alias pyserv="python -m SimpleHTTPServer"

alias ms1="cd /Users/tom.baker/dev/mysageone_uk"
alias gac="cd /Users/tom.baker/dev/sage_one_advanced"
alias gems="cd /Users/tom.baker/dev/sage_one_gac_gems"
alias gacuk="cd /Users/tom.baker/dev/sage_one_gac_uki"
alias gacus="cd /Users/tom.baker/dev/sage_one_gac_us"
alias rungac="itermocil mso_gac"
alias runeverything="itermocil mso_gac; itermocil nae_deps; itermocil nae"
alias bcd="export BCDATABASE_PATH=../bcdatabase_dev"

alias gti="git"
alias grep="grep --line-buffered"

alias yolo="git push origin master"

set -o vi

export NVM_DIR="/Users/tom.baker/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# function docker_start() {
#   docker-machine start default
#   docker-machine env
#   eval "$(docker-machine env default)"
#   eval "$(aws ecr get-login --region eu-west-1)"
# }

function aws_login() {
  eval "$(aws ecr get-login --region eu-west-1 --no-include-email)"
}

function commit() {
  git commit $@;
  parrot --delay=50 --loops=3;
}

function restore() {
  git checkout master
  git fetch
  git branch -D $1
  git checkout origin/$1
  git checkout -b $1
}

# docker_start
