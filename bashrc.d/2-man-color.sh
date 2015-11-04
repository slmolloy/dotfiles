# http://www.gnu.org/software/termutils/manual/termcap-1.3/html_mono/termcap.html
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://en.wikipedia.org/wiki/ANSI_escape_code

# termcap terminfo  description
# ks      smkx      make the keypad send commands
# ke      rmkx      make the keypad send digits
# vb      flash     emit visual bell
# mb      blink     start blink
# md      bold      start bold
# me      sgr0      turn off bold, blink and underline
# so      smso      start standout (reverse video)
# se      rmso      stop standout
# us      smul      start underline
# ue      rmul      stop underline

# Color descriptions:
# 0m - Reset/normal
# 01 - Bold
# 01;31m - Bold and use set foreground color 31, Red
# 01;38;5;67m - Bold and 38 defines custom color, 5 specifies custom and 67 is
# the specific color. First link listed above shows more color options.
# 04;38;5;173m - Underline and use custome color 173.
# See wiki link above for more color code options
# To specify multiple attributes list more \E[* sequences
# Example: \E[01;31m\E[42m
# \E[42m sets background color to green

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;67m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[01;33m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;173m' \
        man "$@"
}
