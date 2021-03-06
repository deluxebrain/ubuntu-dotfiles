[ -z "${__PENS__+.}" ] && readonly __PENS__= || return 0

# Pens
# http://linuxcommand.org/lc3_adv_tput.php
# echo ${WHITE}${ON_RED}...${PEN_RESET}

# Short names for commonly users

# Styles
export STYLE_BOLD="$(tput bold)"
export STYLE_REV="$(tput rev)"
export STYLE_UNDERLINE_START="$(tput smul)"
export STYLE_UNDERLINE_STOP="$(tput rmul)"
export STYLE_STANDOUT_START="$(tput smso)"
export STYLE_STANDOUT_END="$(tput rmso)"
export STYLE_RESET="$(tput sgr0)"

# Foreground colours
export BLACK="$(tput setaf 0)"
export BLUE="$(tput setaf 33)"
export CYAN="$(tput setaf 37)"
export GREEN="$(tput setaf 64)"
export ORANGE="$(tput setaf 166)"
export PURPLE="$(tput setaf 125)"
export RED="$(tput setaf 1)"
export VIOLET="$(tput setaf 61)"
export WHITE="$(tput setaf 15)"
export YELLOW="$(tput setaf 136)"
export NC; NC="$(tput setaf 9)"

# Bold colours
export BBLACK="${STYLE_BOLD}${BLACK}"
export BBLUE="${STYLE_BOLD}${BLUE}"
export BCYAN="${STYLE_BOLD}${CYAN}"
export BGREEN="${STYLE_BOLD}${GREEN}"
export BORANGE="${STYLE_BOLD}${ORANGE}"
export BPURPLE="${STYLE_BOLD}${PURPLE}"
export BRED="${STYLE_BOLD}${RED}"
export BVIOLET="${STYLE_BOLD}${VIOLET}"
export BWHITE="${STYLE_BOLD}${WHITE}"
export BYELLOW="${STYLE_BOLD}${YELLOW}"

# Background colours
export ON_BLACK="$(tput setab 0)"
export ON_BLUE="$(tput setab 33)"
export ON_CYAN="$(tput setab 37)"
export ON_GREEN="$(tput setab 64)"
export ON_ORANGE="$(tput setab 166)"
export ON_PURPLE="$(tput setab 125)"
export ON_RED="$(tput setab 1)"
export ON_VIOLET="$(tput setab 61)"
export ON_WHITE="$(tput setab 15)"
export ON_YELLOW="$(tput setab 136)"
export ON_NC="$(tput setab 9)"

# Prefabs
export PEN_RESET="${NC}${STYLE_RESET}"
export PEN_WARN="${BWHITE}${ON_ORANGE}"
export PEN_ALERT="${BWHITE}${ON_RED}"
export PEN_HIGHLIGHT="${BYELLOW}${ON_BLUE}"
export PEN_INFO="${BBLUE}${ON_WHITE}"
export PEN_OK="${BGREEN}${ON_WHITE}"
export PEN_DEBUG="${BORANGE}${ON_WHITE}"
