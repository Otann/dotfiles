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

## User configuration

# added local bin
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/otann/bin"
export PATH="/Users/otann/Library/Python/2.7/bin:$PATH"




# HOMES
JAVA_HOME=$(/usr/libexec/java_home -v 1.8)


##
## Customization to Otann needs...
##

# fix locale
export LC_ALL="en_US.UTF-8"

alias subl="/usr/local/bin/atom"
alias emacs='open -a /Applications/Emacs.app $1'
alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias sbt="nocorrect sbt"
alias pip="nocorrect pip"
alias zshconfig="subl ~/.zshrc"
alias h="history"
alias hgrep="history | grep"
#alias idea="/Applications/IntelliJ\ IDEA\ 15.app/Contents/MacOS/idea"

#alias usenode='brew unlink iojs && brew link node && echo Updating NPM && npm install -g npm@latest && echo Using Node.js'
#alias useio='brew unlink node && brew link --force iojs && echo Updating NPM && npm install -g npm@latest && echo Using io.js'

alias emacs="/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.17/bin/emacs"
alias ec="/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.17/bin/emacsclient"


##
## Paths for tools
##

# GPG stuff
#export GPG_AGENT_INFO_FILE=$HOME/.gpg-agent-info
#gpg-agent --daemon --enable-ssh-support --write-env-file "${GPG_AGENT_INFO_FILE}"
if [ -f "${GPG_AGENT_INFO_FILE}" ]; then
 . "${GPG_AGENT_INFO_FILE}"
 export GPG_AGENT_INFO
 export SSH_AUTH_SOCK
 export SSH_AGENT_PID
fi
export GPG_TTY=$(tty)

# JRebel aoutoloading in resolver sbt plugin
# export JREBEL_PATH=/Users/otann/Dev/tools/jrebel/jrebel.jar

# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add MongoDB.app binaries to path
PATH="/Applications/MongoDB.app/Contents/Resources/Vendor/mongodb:$PATH"

# Ansible environment
export ANSIBLE_HOSTS=/Users/otann/Dev/tools/ansible

# docker-machine env
#eval "$(docker-machine env default)"

# NVM required things
export NVM_DIR=$(brew --prefix)/var/nvm
source $(brew --prefix nvm)/nvm.sh

##
## Local MacWookie Theme
##

local ret_status="%(?:%{$fg_bold[yellow]%}$ :%{$fg_bold[red]%}$ %s)%{$reset_color%}"
PROMPT='${ret_status}%{$fg_bold[yellow]%}%2~ $(git_prompt_info)%{$reset_color%}'
RPROMPT=''
#RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} %T'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" "

POWERLINE_PATH=$(which powerline)
if [ -x "$POWERLINE_PATH" ] ; then
  . "/Users/otann/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh"
fi

# fix tmux window rename
#export DISABLE_AUTO_TITLE="true"

# fix colors
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=Exfxcxdxbxegedabagacad

# iTerm2 shell integration
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# The next line updates PATH for the Google Cloud SDK.
source '/Users/otann/Dev/tools/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/otann/Dev/tools/google-cloud-sdk/completion.zsh.inc'



