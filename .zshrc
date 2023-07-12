# oh-my-zsh config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# powerlevel10k config
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh my zsh plugins
plugins+=(autojump)
plugins+=(command-not-found)
plugins+=(fzf)
plugins+=(git)
plugins+=(macos)
plugins+=(nvm)
plugins+=(pyenv)
plugins+=(safe-paste)
# autoload .nvmrc
zstyle ':omz:plugins:nvm' autoload yes

# custom plugins
plugins+=(you-should-use)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions config
bindkey '^ ' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
