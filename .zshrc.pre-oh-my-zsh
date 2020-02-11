# For Git
export PATH="/usr/local/bin:$PATH"

# For Anyenv
# Note: --no-rehash option is need for prevent rehash 
#       everytime startup shell
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - --no-rehash)"

# For Python
eval "$(pyenv virtualenv-init -)"

# For GoLang
export GOPATH=$HOME/WorkSpace/go
export PATH=$PATH:$GOPATH/bin

# For Brewfile update
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

