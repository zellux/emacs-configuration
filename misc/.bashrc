export TERM=xterm-256color

alias ls='ls --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias pacman='pacman --needed'
alias svndiff='svn diff --diff-cmd=colordiff'

PS1='[\u@\h \W]\$ '
export manpath=

bind '"\e[Z":menu-complete'

alias df='df -h'

export SVN_EDITOR=vim
export JAVA_HOME=/opt/java/

#export ftp_proxy=http://10.131.1.124:808
#export http_proxy=http://10.131.1.124:808
export ftp_proxy=
export http_proxy=

export PATH=${PATH}:/home/wyx/source/nativeclient/src/nacl/depot_tools:/usr/local/bin

# stty -ixoff -ixon

export IDIR=~/simplescalar 
export ODIR=~/simplescalar 
export CILHOME=/home/wyx/cil

export PS1='\[\e[38;5;39m\][\u@\h \W]\$\[\e[0m\] '
