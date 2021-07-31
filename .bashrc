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
alias v="nvim"
alias sv="sudo nvim"
alias ka="killall"
alias g="git"
alias ls="exa -la"
alias cat="bat"
alias ps="procs"
alias sw1="./set-wallpaper $HOME/Pictures/wallpapers/0031.jpg"
alias sw2="./set-wallpaper $HOME/Pictures/wallpapers/0399.jpg"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
