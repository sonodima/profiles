export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/.go"

export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"


###########################
# ZSH Plugins
###########################

ZSH_THEME="arrow"
plugins=(git docker bun dotnet golang pip rust encode64 extract jsontools)

source $ZSH/oh-my-zsh.sh

# source $ZSH/plugins/fzf-tab/fzf-tab.plugin.zsh
# source $HOMEBREW_PREFIX/share/fzf-tab/fzf-tab.plugin.zsh
# source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
