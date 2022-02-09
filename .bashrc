#
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Run Starship Prompt
eval "$(starship init bash)"

# Some aliases
alias sdn="shutdown now"
alias r="reboot"
alias p="sudo pacman"
alias nv="vim"
alias snv="sudo nvim"
alias ka="killall"
alias g="git"
alias ls="exa -la"
alias cat="bat"
alias ps="procs"
