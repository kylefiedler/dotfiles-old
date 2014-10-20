# make compilers happy
export ARCHFLAGS='-arch x86_64'

# go compiler appeasement
export GOROOT=`brew --cellar`/go/HEAD
export GOBIN=/usr/local/bin
export GOARCH=x86_64
export GOOS=darwin

# favor homebrew
export PATH=/usr/local/bin:$PATH

# Secret Key
SECRET_KEY_BASE=8ff477e58e9271f4dd4b1d7fff2e759b4bc1ebc354bd0a2027c2a821e3858b0b4fc339814293b1acc2b90d181ed54d49a6432be12cab5bf70e548c723be56477

# load history
export HISTFILE=~/.history

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
