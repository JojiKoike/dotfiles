# Starship
eval "$(starship init zsh)"
#RUST_BACKTRACE=1

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
alias zshconfig='vi ~/.zshrc'

# For Git, Vim
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# For asdf
. /usr/local/opt/asdf/libexec/asdf.sh

# For Pipenv
export PIPENV_VENV_IN_PROJECT=true

# For GoLang
# https://github.com/syndbg/goenv/blob/master/CHANGELOG.md#200beta6
export GOENV_DISABLE_GOPATH=1 
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# For Rust
export PATH="$HOME/.cargo/bin:$PATH"

# For ssh-agent
eval "$(ssh-agent)"

# For Brewfile update
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# For GitHub CLI
eval "$(gh completion -s zsh)"

# For Apache Spark
export SPARK_HOME=$HOME/tools/spark-2.4.4-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH

# added by travis gem
[ -f /Users/george/.travis/travis.sh ] && source /Users/george/.travis/travis.sh

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
export PATH="/usr/local/opt/bison@2.7/bin:$PATH"


