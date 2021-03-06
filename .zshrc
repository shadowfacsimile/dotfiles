# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

# Auto change directory without giving cd
setopt autocd

# vim key bindings for command line edits
bindkey -v
export KEYTIMEOUT=1

# Enable colors and change prompt:
autoload -U colors && colors

# Default prompt
PS1='[\u@\h \W]\$ '

# Some aliases
alias ls='ls --color=auto'
alias vi=nvim
alias vim=nvim
alias am=alsamixer
alias bright='sudo ~/scripts/brightness.sh'
alias kcadd='eval $(keychain --eval --quiet id_rsa_sfdo id_rsa_sfgit)' # Add ssh keys using keychain
alias zipstuff='~/scripts/zipstuff.sh'
alias rsyncstuff='~/scripts/rsyncstuff.sh'
alias ugstuff='~/scripts/users_and_groups.sh'
alias pacstuff='~/scripts/pacmanstuff.sh'
alias transtuff='~/scripts/transmissionstuff.sh'
alias f2bstuff='~/scripts/fail2banstuff.sh'
alias ufwstuff='~/scripts/ufwstuff.sh'
alias wlstuff='~/scripts/wirelessstuff.sh'

# Environment variables
export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL2="alacritty"
export BROWSER="firefox"

# Cowsay intro
fortune | cowsay -f $(ls /usr/share/cows/|shuf -n 1) | lolcat

# Starship shell prompt
eval "$(starship init zsh)"

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# End of lines added by compinstall

