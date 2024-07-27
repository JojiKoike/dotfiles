# Starship
eval "$(starship init zsh)"

# For ssh-agent
eval "$(ssh-agent)"

# Command Aliases
if [[ $(command -v eza) ]]; then
    alias e='eza --icons --git'
    alias l=e
    alias ls=e
    alias ea='eza -a --icons --git'
    alias la=ea
    alias ee='eza -aahl --icons --git'
    alias ll=ee
    alias et='eza -T -L 3 -a -I "node_modules|.git|.cache" --icons'
    alias lt=et
    alias eta='eza -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
    alias lta=eta
    alias l='clear && ls'
fi
alias vi='vim'
alias zshconf='vi ~/.zshrc'

# For Brewfile update
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# For Git, Vim
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# For asdf
#. /opt/homebrew/opt/asdf/libexec/asdf.sh
. $(brew --prefix asdf)/libexec/asdf.sh

# For Pipenv
export PIPENV_VENV_IN_PROJECT=true

# For direnv
export EDITOR=vi
eval "$(direnv hook zsh)"

# For GoLang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# For Rust
export PATH="$HOME/.cargo/bin:$PATH"

# ghq -> peco
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# For Android Studio
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools#

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jojikoike/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jojikoike/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jojikoike/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jojikoike/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# Created by `pipx` on 2024-06-09 12:55:30
export PATH="$PATH:/Users/jojikoike/.local/bin"
