# Setup basic color variables
BLACK="\[\033[0;30m\]"
DGRAY="\[\033[1;30m\]"
RED="\[\033[0;31m\]"
LRED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
LGREEN="\[\033[1;32m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
LBLUE="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
LPURPLE="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
LCYAN="\[\033[1;36m\]"
LGRAY="\[\033[0;37m\]"
WHITE="\[\033[1;37m\]"
NEUTRAL="\[\033[0m\]"


# Setup complex color variables
C_GREEN="\[\033[38;5;82m\]"
C_BLUE="\[\033[38;5;75m\]"
C_BROWN="\[\033[38;5;220m\]"
C_PURPLE="\[\033[38;5;183m\]"

export BLACK DGRAY RED LRED GREEN LGREEN BROWN YELLOW BLUE
export LBLUE PURPLE LPURPLE CYAN LCYAN LGRAY WHITE NEUTRAL

export C_GREEN C_BLUE C_BROWN C_PURPLE

export TERM="xterm-256color"
