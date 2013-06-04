# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# automatically enter directories without cd
setopt auto_cd

# use Vim as an editor
export EDITOR=vim
export VISUAL=vim
export GIT_EDITOR=vim

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

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries, share history between sessions
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_APPEND
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# keep TONS of history
export HISTSIZE=4096

# look for ey config in project dirs
export EYRC=./.eyrc

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# Allows me to cd into projects
cdpath=(. ~/Development/ )
typeset -gU cdpath

if [[ -s /Users/kylefiedler/.rvm/scripts/rvm ]] ; then source /Users/kylefiedler/.rvm/scripts/rvm ; fi

PATH=/usr/local/bin:~/bin:~/bin/scripts:/usr/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin:$PATH

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Enable extended globbing
setopt EXTENDED_GLOB

# load in aliases
source ~/.zshenv

# awesome completion from zshkit
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' use-cache on
zstyle ':completion:*' users resolve

# colorful ls completion
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=0;32:*.jpe=0;32:*.jpeg=0;32:*.gif=0;32:*.bmp=0;32:*.pbm=0;32:*.pgm=0;32:*.ppm=0;32:*.tga=0;32:*.xbm=0;32:*.xpm=0;32:*.tif=0;32:*.tiff=0;32:*.png=0;32:*.eps=0;32:*.mpg=0;32:*.mpeg=0;32:*.avi=0;32:*.fli=0;32:*.gl=0;32:*.dl=0;32:*.xcf=0;32:*.xwd=0;32:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.flac=01;35:*.m4a=01;35:*.mpc=01;35:*.o=01;33:*.c=01;35:*.m=01;35:*.h=01;35:*.rb=01;35:*.pl=01;35:*.py=01;35:*.sh=01;35:*.m=01;35:*akefile=0;35:*tags=01;32:*~=01;30:*.swp=01;30:*README=01;31:*README.*=01;31:*readme=00;31:*.tex=01;31:*.htm=01;31:*.html=01;31:*.pdf=00;31:*.PDF=00;31:*.ps=00;31:*.PS=00;31:*.png=00;31:*.PNG=00;31:*.jpg=00;31:*.JPG=00;31:*.jpeg=00;31:*.JPEG=00;31:';
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

# Go to current project
export CURRENT_PROJECT_PATH=$HOME/.current-project

function chpwd {
  echo $(pwd) >! $CURRENT_PROJECT_PATH
}

current() {
  if [[ -f $CURRENT_PROJECT_PATH ]]; then
    cd "$(cat $CURRENT_PROJECT_PATH)"
  fi
}

current

#Add tab shortcut
function tab() {
  local command="cd \\\"$PWD\\\""
  (( $# > 0 )) && command="${command}; $*"

  the_app=$(
    osascript 2>/dev/null <<EOF
      tell application "System Events"
        name of first item of (every process whose frontmost is true)
      end tell
EOF
  )

  [[ "$the_app" == 'Terminal' ]] && {
    osascript 2>/dev/null <<EOF
      tell application "System Events"
        tell process "Terminal" to keystroke "t" using command down
        tell application "Terminal" to do script "${command}" in front window
      end tell
EOF
  }

  [[ "$the_app" == 'iTerm' ]] && {
    osascript 2>/dev/null <<EOF
      tell application "iTerm"
        set current_terminal to current terminal
        tell current_terminal
          launch session "Default Session"
          set current_session to current session
          tell current_session
            write text "${command}"
          end tell
        end tell
      end tell
EOF
  }
}
