#Aliases
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias python="python3"
alias pip="pip3"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist 
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

PROMPT=' %B%F{240}%~ %f%b: '
