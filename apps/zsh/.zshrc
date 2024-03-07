export ZSH="$HOME/.oh-my-zsh"
export PROFILES="$HOME/.profiles"
export GOPATH="$HOME/.go"

export FZF_DEFAULT_OPTS="--color=bg+:gray,spinner:green,pointer:green,gutter:-1"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"
ZSH_THEME="arrow"

# Zsh Plugins
plugins=(git docker golang pip rust encode64 extract jsontools)
source $ZSH/oh-my-zsh.sh
source $PROFILES/apps/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source $PROFILES/apps/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PROFILES/apps/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Add Python3 Binaries to PATH
PYTHON=$(python3 -m site --user-base)
export PATH="$PYTHON/bin:$PATH"
