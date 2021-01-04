#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi='nvim'
alias vim='nvim'

# Cowsay intro
fortune | cowsay -f $(ls /usr/share/cows/|shuf -n 1) | lolcat

# Starship shell prompt
eval "$(starship init bash)"
