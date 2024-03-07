export ZSH="$HOME/.oh-my-zsh"
export PROFILES="$HOME/.profiles"
export GOPATH="$HOME/.go"

export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"


ZSH_THEME="arrow"
plugins=(git docker bun dotnet golang pip rust encode64 extract jsontools)

source $ZSH/oh-my-zsh.sh
source $PROFILES/apps/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source $PROFILES/apps/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PROFILES/apps/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Add Python3 Binaries to PATH
PYTHON=$(python3 -m site --user-base)
export PATH="$PYTHON/bin:$PATH"

# Wasmer
export WASMER_DIR="/Users/tom/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# export PATH="/opt/homebrew/opt/llvm@15/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
