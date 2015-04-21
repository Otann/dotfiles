# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER="anton"
# ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github osx brew pod python pip knife scala sbt chef ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration

# added local bin
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/otann/bin"

# HOMES
JAVA_HOME=$(/usr/libexec/java_home -v 1.7)


##
## Customization to Otann needs...
##

# fix locale
export LC_ALL="en_US.UTF-8"

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias sbt="nocorrect sbt"
alias pip="nocorrect pip"
alias zshconfig="subl ~/.zshrc"
alias h="history"
alias hgrep="history | grep"

##
## Paths for tools
##

# JRebel aoutoloading in resolver sbt plugin
# export JREBEL_PATH=/Users/otann/Dev/tools/jrebel/jrebel.jar

# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Ansible environment
export ANSIBLE_HOSTS=/Users/otann/Dev/tools/ansible

##
## Local MacWookie Theme
##

local ret_status="%(?:%{$fg_bold[yellow]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%}"
PROMPT='${ret_status}%{$fg_bold[yellow]%}%3~ %{$reset_color%}'
RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} %T'

ZSH_THEME_GIT_PROMPT_PREFIX="git:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✖"
ZSH_THEME_GIT_PROMPT_CLEAN=" "


# fix colors
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=Exfxcxdxbxegedabagacad
