# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# functions
if [ -e "$HOME/.functions" ]; then
  source "$HOME/.functions"
fi

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"
bindkey '^r' history-beginning-search-backward

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

# look for ey config in project dirs
export EYRC=./.eyrc

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# Allows me to cd into projects
cdpath=(. ~/code/thoughtbot/ ~/code/play/ ~/code/src/)
typeset -gU cdpath

# prediction
autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '^Z'   predict-on
bindkey '^X^Z' predict-off
zstyle ':predict' verbose true

PATH=~/bin:~/bin/scripts:/usr/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin:$PATH

if [[ -s /Users/hgimenez/.rvm/scripts/rvm ]] ; then source /Users/hgimenez/.rvm/scripts/rvm ; fi

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

# load in aliases
source ~/.zshenv

# awesome completion from zshkit
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' use-cache on
zstyle ':completion:*' users resolve

# use dircolours in completion listings
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Enable menu completion
zstyle ':completion*:default' menu 'select=1'

# allow approximate matching
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*' auto-description 'Specify: %d'
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' verbose true
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns \
'*?.(o|c~|zwc)' '*?~'

# no binary files for vim
zstyle ':completion:*:vim:*' ignored-patterns '*.(o|a|so|aux|dvi|log|swp|fig|bbl|blg|bst|idx|ind|out|toc|class|pdf|ps|pyc)'

# tar files
zstyle ':completion:*:tar:*' files '*.tar|*.tgz|*.tz|*.tar.Z|*.tar.bz2|*.tZ|*.tar.gz'

# Group relatex matches:
zstyle ':completion:*' group-name ''
zstyle ':completion:*:-command-:*:(commands|builtins|reserved-words-aliases)' group-name commands

# Separate man page sections
zstyle ':completion:*:manuals' seperate-sections true

# Separate comand line options and descriptions with #
zstyle ':completion:*' list-separator '#'

# Generate descriptions for arguments
zstyle ':completion:*' auto-description 'specify: %d'

# Give long completion options in a list. tab to advance.
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# reload completion
autoload -Uz compinit
compinit
