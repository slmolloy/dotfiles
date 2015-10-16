export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
PS1="${debian_chroot:+($debian_chroot)}$LGREEN\u@\h$NEUTRAL:$LBLUE\w$LCYAN"'$(__git_ps1 " (%s)")'"$NEUTRAL$ "
