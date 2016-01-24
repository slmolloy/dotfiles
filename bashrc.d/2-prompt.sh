export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
PS1="${debian_chroot:+($debian_chroot)}$C_GREEN\u@\h$NEUTRAL:$C_BLUE\w$C_BROWN"'$(__git_ps1 " (%s)")'"$NEUTRAL$ "
