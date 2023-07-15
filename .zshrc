# Starship
eval "$(starship init zsh)"

# For ssh-agent
eval "$(ssh-agent)"

# Command Aliases
if [[ $(command -v exa) ]]; then
    alias e='exa --icons --git'
    alias l=e
    alias ls=e
    alias ea='exa -a --icons --git'
    alias la=ea
    alias ee='exa -aahl --icons --git'
    alias ll=ee
    alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
    alias lt=et
    alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
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

# For GoLang
# https://github.com/syndbg/goenv/blob/master/CHANGELOG.md#200beta6
export GOENV_DISABLE_GOPATH=1
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

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
