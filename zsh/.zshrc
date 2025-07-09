# neofetch | lolcat -a -s 900
# nitrogen --set-zoom-fill ~/Media/Backgrounds/978454.jpg
# Color Setup
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

# aliases
alias l='lsd -hl --group-dirs first'
alias ll='lsd -hA --group-dirs first'
alias c='clear'
alias updatemirrors='sudo reflector --verbose --country DE,SE,GB --protocol https --sort rate --latest 20 --download-timeout 6 --save /etc/pacman.d/mirrorlist'
alias pycharm='pycharm-professional'
alias dupeterm='kitty --directory $(pwd) & disown'
alias cd='z'
alias fetch='neofetch | lolcat -a -s 900'

# Basic auto/tab complete:
zstyle :compinstall filename '/home/n8dawg/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
 _comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

export PATH=$PATH:/home/nate/.local/bin
export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="/home/n8dawg/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin":$PATH
export PATH=$PATH:/usr/local/bin
export GOBIN=/path/to/your/gobin
export PATH=$GOBIN:$PATH


# export XDG_CURRENT_DESKTOP=Sway 

### SETTING THE SPACESHIP PROMPT ###
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# eval $(kitty +kitten shell-integration)


