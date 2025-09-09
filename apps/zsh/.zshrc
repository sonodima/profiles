export ZSH="$HOME/.oh-my-zsh"
export PROFILES="$HOME/.profiles"


export EDITOR="hx"
export FZF_DEFAULT_OPTS="--color=bg+:gray,spinner:green,pointer:green,gutter:-1"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"
ZSH_THEME="arrow"


plugins=(git docker encode64 extract jsontools)
source $ZSH/oh-my-zsh.sh
source $PROFILES/apps/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source $PROFILES/apps/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PROFILES/apps/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Android SDK Setup
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
