# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
#!/bin/bash

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

alias eb='goland --wait ~/.bashrc'
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
alias python3='/usr/local/Cellar/python\@3.10/3.10.4/bin/python3'
alias t='cd /tmp'

# Docker
alias dockerrmi='docker rmi -f $(docker images -a -q)'

# Kubernetes
alias h='helm'
alias hu='helm uninstall'
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
alias kbash='k run -it --image=amallela/ubuntu:latest kbash'
alias kbashssh='kex kbash -- bash'

# Istio
alias igl='k logs -f -l istio=ingressgateway -n istio-system'
alias egl='k logs -f -l istio=egressgateway -n istio-system'
alias i14='~/istio-1.14.1/bin/istioctl'
alias iis14='~/istio-1.14.1/bin/istioctl -n istio-system'
alias i='i14'
alias igpo='kgpol istio=ingressgateway -A'
alias egpo='kgpol istio=egressgateway -A'
alias idr='k rollout restart deployment istiod -n istio-system'
alias idep='kex -n istio-system $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l app=istiod -n istio-system) -- curl localhost:8080/debug/endpointz'
alias igc='i pc c $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o json -n istio-system'
alias idl='k logs -f -l app=istiod -n istio-system'
alias iglis='i pc l $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o json -n istio-system'
alias igr='i pc r $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o json -n istio-system'
alias igep='i pc ep $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o json -n istio-system'
alias igall='i pc all $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o json -n istio-system'
alias iga='i pc a $(kubectl get po --output=jsonpath={.items[0].metadata.name} -l istio=ingressgateway -n istio-system) -o yaml -n istio-system'

# Golang
alias go18='export PATH="/usr/local/opt/go@1.18/bin:$PATH"'
alias gop='cd $GOPATH/src'

# Variable exporting
export EDITOR='goland --wait'
export M2_REPO=/Users/amallela/mavenrepo
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=2048m"
export PS1='\w\$ '
export LSCOLORS=gxfxcxdxbxexexabaeacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export GOPATH=/Users/amallela/go
export GOPRIVATE=*.eng.vmware.com
export PATH=$PATH:$GOPATH/bin:/usr/local/bin:${KREW_ROOT:-$HOME/.krew}/bin:$HOME/.gem/ruby/3.0.0/bin:/Users/amallela/.rvm/scripts/rvm:/usr/local/opt/python@3.10/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
