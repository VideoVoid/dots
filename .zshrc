# auto completion
zstyle ':completion:*' menu select
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# PROMPT="%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# "

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path
export PATH=$PATH:/home/jej/bin/

# Vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[2 q';;      # block
        viins|main) echo -ne '\e[6 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[6 q' ;} # Use beam shape cursor for each new prompt.

#Aliases
 #ranger 
alias rfb='ranger'
 #yt-dlp
alias dlvi='yt-dlp --config-location /home/jej/bin/Yt-dlp/v'
alias dlmu="yt-dlp --config-location /home/jej/bin/Yt-dlp/m"
 #ncmpcpp
alias music='ncmpcpp'
 #animes
alias ani='ani-cli'
 #matrix
alias matrix='unimatrix'
 #pacman
alias pdl='sudo pacman -S'
alias prm='sudo pacman -R'
alias pup='sudo pacman -Syu'
 #Yay
alias ydl='yay -S'
alias yrm='yay -R'
alias yup='yay -Syu'
 #update .xresources
alias xreset='xrdb ~/.Xresources'

