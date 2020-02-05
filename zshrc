#Aliases
alias hardware_simulator="bash -c '/Users/riz/nand2tetris_projects/tools/HardwareSimulator.sh'"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias python="python3"
alias pip="pip3"
alias l="ls -la"
alias sync_configs="cp ~/.zshrc ~/PersonalConfigsAndScripts/zshrc;cp ~/.vimrc ~/PersonalConfigsAndScripts/vimrc;cd ~/PersonalConfigsAndScripts; git commit -a;git push"
alias killtouchbar="killall ControlStrip"
alias updatezshrc="cp ~/.zshrc ~/PersonalConfigsAndScripts/zshrc; cd ~/PersonalConfigsAndScripts; git commit -a; git push;" 
alias updatevimrc="cp ~/.vimrc ~/PersonalConfigsAndScripts/vimrc; cd ~/PersonalConfigsAndScripts; git commit -a; git push;" 

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
