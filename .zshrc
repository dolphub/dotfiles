# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/randymikkelsaar/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew npm make composer)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
    export PATH="$HOME/Android/tools:$PATH"
    export PATH="$HOME/Android/platform-tools:$PATH"
    export ANDROID_HOME="$HOME/Android"#

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias cls='clear && pwd && ls -lrt'	    # Clear screen and list contents

alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables

alias g="gulp"
alias pa="php artisan"
# ============
# Git Commands
# ============

alias gs='git status'
alias gb='git branch'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gup='git commit --fixup HEAD'
alias gamend='git commit --amend'

function newBranch() {
    git checkout -b $1
}

function changeBranch() {
    git checkout $1
}

alias gcb=newBranch
alias gc=changeBranch

######################
# Node Aliases
######################
alias tnode='ts-node'

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'



#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------


#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

alias ragnar="ssh ragnar@viking.tech.ek3.com"
alias ragnarbuild="ssh ragnar@si-build.tech.ek3.com"
alias dstudios="ssh root@159.203.20.19"

alias vim='/usr/local/Cellar/macvim/8.0-127/bin/mvim -v'
alias vi='/usr/local/Cellar/macvim/8.0-127/bin/mvim -v'

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias cls='clear && pwd && ls -lrt'	    # Clear screen and list contents

alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables

alias g="gulp"
alias pa="php artisan"
# ============
# Git Commands
# ============

alias gs='git status'
alias gb='git branch'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gup='git commit --fixup HEAD'

function newBranch() {
    git checkout -b $1
}

function changeBranch() {
    git checkout $1
}

function grebase() {
    if [[ "$#" -ne 1 ]]; then
        echo "grebase requires exactly 1 parameter: number" >&2; exit 1
    fi

    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]] ; then
       echo "error: Not a number" >&2; exit 1
    fi

    git rebase -i HEAD~$1
}

alias gcb=newBranch
alias gc=changeBranch



#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'



#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------


#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

alias ragnar="ssh ragnar@viking.tech.ek3.com"
alias ragnarbuild="ssh ragnar@si-build.tech.ek3.com"
alias dstudios="ssh root@159.203.20.19"

alias vim='/usr/local/Cellar/macvim/8.0-127/bin/mvim -v'
alias vi='/usr/local/Cellar/macvim/8.0-127/bin/mvim -v'


# Customize some options
setopt autocd
setopt nocheckjobs
setopt nohup
setopt listpacked
setopt extendedglob
setopt completeinword
setopt alwaystoend
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_verify
setopt append_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# eval $(minikube docker-env)

alias fuckvehiklmaster="git checkout -b fuckmaster && git branch -D master && git fetch vehikl && git checkout -b master vehikl/master && git branch -D fuckmaster"
cassandraPortForward () {
    kubectl port-forward `kubectl get pods | grep cassandra | cut -d' ' -f1` 7000:7000 7001:7001 7199:7199 9042:9042 9160:9160
}

rabbitPortForward () {
    kubectl port-forward `kubectl get pods | grep rabbit | grep -v stats | grep -v proxy | grep -v exporter | cut -d' ' -f1` 5672:5672 15672:15672 5671:5671 9093:9093
}

redisPortForward () {
    kubectl port-forward `kubectl get pods | grep redis | grep -v exporter |  cut -d' ' -f1` 6379:6379 26379:26379
}


# alias cassandraPortForward=cassandra_port_foward
#alias rabbitPortForward=rabbit_port_forward
#alias redisPortForward=redis_port_forward
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

