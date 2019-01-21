# Command Prompt Format


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


PS1="\W\033[32m\]\$(parse_git_branch)\[\033[00m\] → "
#PS1="\W → "
#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
    export PATH="$HOME/Android/tools:$PATH"
    export PATH="$HOME/Android/platform-tools:$PATH"
    export ANDROID_HOME="$HOME/Android"




#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

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

# ============
# Git Commands
# ============

alias gs='git status'
alias gb='git branch'
alias gaa='git add -A'
alias gup='git commit --fixup HEAD'
alias gamend='git commit --amend'
alias gcm='git commit -m'
alias gpush='git push origin `git symbolic-ref HEAD 2>/dev/null` -u'

function newBranch() {
    git checkout -b $1
}

function changeBranch() {
    git checkout $1
}

alias gcb=newBranch
alias gc=changeBranch

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

alias vim='/usr/local/Cellar/macvim/7.4-105/bin/mvim -v'
alias vi='/usr/local/Cellar/macvim/7.4-105/bin/mvim -v'

