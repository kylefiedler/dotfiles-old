# make compilers happy
export ARCHFLAGS='-arch x86_64'

# go compiler appeasement
export GOROOT=`brew --cellar`/go/HEAD
export GOBIN=/usr/local/bin
export GOARCH=x86_64
export GOOS=darwin

# favor homebrew
export PATH=/usr/local/bin:$PATH

# load history
export HISTFILE=~/.history

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

