# Aliases

# Color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Listing
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# General
alias cl='clear'

# Shared folder
alias sh='cd /media/Windows'

# Projects
alias p='cd /home/parthi/Documents/Projects'

# Force gvim to not use Ubuntu menu
alias gvim='UBUNTU_MENUPROXY= gvim'

# Temporary

# Sailtru Board
alias tv='cd /home/parthi/Documents/Projects/Sailthru/sailthru_board'

# Sailthru/mobile/SDK/android
alias droid='cd /home/parthi/Documents/Projects/Sailthru/mobile/SDK/android/libSailthru/src/sailthru/'

# RFC
alias rfc='php ~/Docuemnts/Projects/Sailthru/devtools/workflow/rfc.php '
alias rfc-complete='php ~/Docuemnts/Projects/Sailthru/devtools/workflow/rfc.php --complete '
alias rfc-review='php ~/Documents/Projects/Sailthru/devtools/workflow/rfc.php --review '

alias sshev='ssh evgate'
