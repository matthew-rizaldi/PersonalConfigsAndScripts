#Aliases
alias hardware_simulator="bash -c '/Users/riz/nand2tetris_projects/tools/HardwareSimulator.sh'"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias l="ls -la"
alias sync_configs="cp ~/.zshrc ~/PersonalConfigsAndScripts/zshrc;cp ~/.vimrc ~/PersonalConfigsAndScripts/vimrc;cd ~/PersonalConfigsAndScripts; git commit -a;git push"
alias killtouchbar="killall ControlStrip"
alias updatezshrc="cp ~/.zshrc ~/PersonalConfigsAndScripts/zshrc; cd ~/PersonalConfigsAndScripts; git commit -a; git push;" 
alias updatevimrc="cp ~/.vimrc ~/PersonalConfigsAndScripts/vimrc; cd ~/PersonalConfigsAndScripts; git commit -a; git push;" 

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export SSH_AUTH_SOCK=/Users/elmo/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
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

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#Automatically start pyenv
eval "$(pyenv init -)"

