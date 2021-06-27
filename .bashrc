#!/bin/bash

# Generic $dotdir/bashshrc
# Engineering Services (ES)
#
##
# Things the user might wish to set.

###########################################################################
# Everything below this line is run for interactive shells.
# If you wish the full environment even in non-interactive
# shells set FULLENV above to 'true'.

export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=50000        # history file size
export HISTSIZE=100000           # save last 1000 commands

### amallela-specific ###

export EDITOR='vim'
alias eb="$EDITOR ~/.bashrc"
alias b='. ~/.bashrc'
alias ll='ls -lGrt'
alias lt='ls -ltr'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias grep='grep -is'
alias find='find . -name'
alias du='du -sh'
alias d='diff -ur'
alias df='df -h'
alias tf='terraform'

# Docker
alias dockerrmi='docker rmi -f $(docker images -a -q)'

# Kubernetes
alias h='helm'
alias hu='helm uninstall'
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

# Istio
alias igl='k logs -f -l istio=ingressgateway -n istio-system'
alias egl='k logs -f -l istio=egressgateway -n istio-system'
alias i='/Users/amallela/istio-1.7.3/bin/istioctl'

# Variable exporting

export EDITOR='vim'
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=2048m"
export PS1='\w\$ '
export LSCOLORS=gxfxcxdxbxexexabaeacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home
export GOPATH=/Users/amallela/go
export PATH=$PATH:$GOPATH/bin:/usr/local/bin:${KREW_ROOT:-$HOME/.krew}/bin
export BUILDAPPS=/build/apps/bin
export TCROOT=/build/toolchain
export MACOS=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
