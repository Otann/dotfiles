# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER="anton"
ZSH_THEME="agnoster"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github osx brew python pip scala sbt ssh-agent docker go golang)

source $ZSH/oh-my-zsh.sh

##
## Customization to Otann needs...
##

# fix locale
export LC_ALL="en_US.UTF-8"

alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias sbt="nocorrect sbt"
alias pip="nocorrect pip"
alias zshconfig="subl ~/.zshrc"
alias h="history"
alias hgrep="history | grep"

alias emacs="/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.17/bin/emacs"
alias ec="/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.17/bin/emacsclient"

alias gt="gittower ."
alias git-home-on="mv ~/.git_ ~/.git"
alias git-home-off="mv ~/.git ~/.git_"

##
## Paths for tools
##

# added local bin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"


# HOMES
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANSIBLE_HOSTS="$HOME/Dev/tools/ansible"


# Maven Stuff
JAVA_RAM="2G"
PERM_SIZE="512M"
export JAVA_OPTS="-Xmx${JAVA_RAM} -XX:MaxPermSize=${PERM_SIZE} -Xms512M"
export MAVEN_OPTS="-Xmx${JAVA_RAM} -XX:MaxPermSize=${PERM_SIZE} -Xss512M"
export MAVEN_OPTS_LOAD="-Xmx4G -XX:MaxPermSize=1G -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=18080 -Dcom.sun.management.jmxremote.authenticate=false -Djava.net.preferIPv4Stack=true"

# Zalando STUPS stuff
export CREDENTIALS_DIR="~/.berry/catalog"

## GPG stuff
#export GPG_AGENT_INFO_FILE=$HOME/.gpg-agent-info
#if [ -x "$(which gpg-agent)" ] ; then
#  gpg-agent --daemon --enable-ssh-support --write-env-file "${GPG_AGENT_INFO_FILE}"
#fi
#if [ -f "${GPG_AGENT_INFO_FILE}" ]; then
# . "${GPG_AGENT_INFO_FILE}"
# export GPG_AGENT_INFO
# export SSH_AUTH_SOCK
# export SSH_AGENT_PID
#fi
#export GPG_TTY=$(tty)

# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

##
## Eval all the things
##

# the fuck thing
#if [ -x "$(which thefuck)" ] ; then
#  eval $(thefuck --alias)
#fi


# Docker tools
# docker-machine env
#if [ -x "$(which docker-machine)" ] ; then
#  eval "$(docker-machine env default)"
#fi

# rbenv tooling
#if [ -x "$(which rbenv)" ] ; then
#  eval "$(rbenv init -)"
#  export LATEST_RUBY=$(rbenv install --list | grep ' \d\.\d\.\d$' | tail -1 | xargs)
#  rbenv global $LATEST_RUBY
#fi

# powerline-go tooling
export GOPATH="/Users/$(whoami)/Dev/golang"
export PATH="$GOPATH/bin:$PATH"
function powerline_precmd() {
  export PS1="$(powerline-shell-go zsh $? 2> /dev/null) "
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ -x "$(which powerline-shell-go)" ] ; then
  install_powerline_precmd
fi

##
## Local MacWookie Theme
##

#local ret_status="%(?:%{$fg_bold[yellow]%}$ :%{$fg_bold[red]%}$ %s)%{$reset_color%}"
#PROMPT='${ret_status}%{$fg_bold[yellow]%}%2~ $(git_prompt_info)%{$reset_color%}'
#RPROMPT=''
#RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} %T'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" "

# fix tmux window rename
#export DISABLE_AUTO_TITLE="true"

# fix colors
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=Exfxcxdxbxegedabagacad

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/otann/Dev/tools/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/otann/Dev/tools/google-cloud-sdk/completion.zsh.inc'

# This enables fzf for zsh, see https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
