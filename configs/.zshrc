plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -f ~/.bash_aliases_qsc ]; then
            . ~/.bash_aliases_qsc
fi

if [ -f ~/.bash_aliases ]; then
            . ~/.bash_aliases
fi

bindkey '^ ' autosuggest-accept


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey '^H' backward-kill-word

# Go
export PATH=$PATH:/usr/local/go/bin

# Nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# user bin
export PATH="$PATH:/home/akash/bin/qsys"
export PATH="$PATH:/home/akash/bin"

export NODE_OPTIONS="--max-old-space-size=16384"

if [[ $SERVER_TYPE == "node" ]]; then
        echo "Starting node server"
        npm run start
        export SERVER_TYPE=""
fi
