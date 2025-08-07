# Set safe default PATH early to ensure coreutils and shell commands work
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:$PATH"

# Add user-specific paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/lib/ccache/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Create cache directory for zcompdump if not present
mkdir -p ~/.zsh/cache

# Enable compinit and use cache
autoload -Uz compinit
compinit -d ~/.zsh/cache/zcompdump-$ZSH_VERSION

# Prompt
eval "$(starship init zsh)"

# Smart directory jumping
eval "$(zoxide init zsh)"


# aliases
alias l='exa -hl --group-directories-first'
alias ll='exa -lha --group-directories-first'
alias c='clear'
alias updatemirrors='sudo reflector --verbose --country DE,SE,GB --protocol https --sort rate --latest 20 --download-timeout 6 --save /etc/pacman.d/mirrorlist'
alias pycharm='pycharm-professional'
alias dupeterm='kitty --directory $(pwd) & disown'
alias cd='z'
alias fetch='neofetch | lolcat -a -s 900'

# Basic auto/tab complete:
zstyle :compinstall filename '/home/n8dawg/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist

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
export GOBIN=$HOME/.local/gobin

# Optional: Enable syntax highlighting or autosuggestions here if used
# Example:
 source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

