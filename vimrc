" Basics
"""""""""""""""""""""""""""""""""
set nocompatible                  " We're on vim, not vi
set wildmode=list:longest         " bash like command line tab completion
set backspace=indent,eol,start    " Intuitive backspacing in insert mode
set shortmess=atI
set visualbell                    " get rid of the BEEP
set scrolloff=3                   " Provide three lines of context
set autowrite                     " Automatically save before commands like :next
set showcmd                       " display incomplete commands
set ttimeoutlen=50                " Speed up <esc>
set spell                         " I carnt spelll
set tabstop=2 shiftwidth=2 expandtab " Set two space tabs:
set iskeyword+=-

" Searching
"""""""""""""""""""""""""""""""""
set ignorecase        " search case insensitive
set smartcase         " search case sensitive when term has a capital letter
set hlsearch          " Highlight search terms
set incsearch         " search dynamically as keyword is typed.

" Backups
"""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile

" Softtabs, 2 spaces
"""""""""""""""""""""""""""""""""
set tabstop=2
set shiftwidth=2
set expandtab

" Ignore
"""""""""""""""""""""""""""""""""
set wildignore+=*.sw?
set wildignore+=.git,.svn
set wildignore+=*.zip,*.gz,*.bz,*.tar
set wildignore+=*.pyc,*.pyo,*.o,*.obj,*~
set wildignore+=*/vim/backups/*
set wildignore+=*/.sass-cache/*,*.scssc
set wildignore+=*DS_Store*
set wildignore+=*/vendor/rails/*,*/vendor/cache/*
set wildignore+=*.gem
set wildignore+=*/_site/*
set wildignore+=*/log/*,*/tmp/*,*/cache/*
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.avi,*.wmv,*.ogg,*.mp3,*.mov
set wildignore+=*/build/*

" Use Ag (https://github.com/ggreer/the_silver_searcher) instead of Grep when available
if executable("ag")
  set grepprg=ag\ --noheading\ --nogroup\ --nocolor
 endif

" Paste
"""""""""""""""""""""""""""""""""
" paste in INSERT mode from Vim's clipboard (unnamed register)
imap ppp <ESC>pa

" paste in COMMAND mode from Vim's clipboard (unnamed register)
cmap ppp <C-r>"

" always indent after pasting
noremap p p=']

"Copy to OS clipboard
"set clipboard=unnamed

filetype plugin indent on

" Set filetype and omnicompletion
"""""""""""""""""""""""""""""""""
if has("autocmd")
  autocmd BufNewFile,BufRead jquery.*.js set ft=javascript syntax=jquery
  autocmd BufNewFile,BufRead *.scss set ft=scss syntax=scss
  autocmd BufNewFile,BufRead *.svg set ft=xml syntax=svg
  autocmd BufNewFile,BufRead *.erb set filetype=html " Set ERB filetype to HTML
  autocmd BufRead,BufEnter Brewfile set ft=conf
  autocmd BufRead *.json set ft=javascript

  autocmd FileType html,markdown,erb setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType css,css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

  " Markdown
  autocmd BufRead,BufNewFile *.md,*.markdown,*.mkdn setlocal spell filetype=ghmarkdown textwidth=80

  " Indentation
  autocmd BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent
  autocmd BufRead,BufNewFile *.css,*.scss setlocal foldmethod=marker foldmarker={,}

"   autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType erb setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType php setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType scss setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

  " Make CSS omnicompletion work for SASS and SCSS
  " au BufRead,BufNewFile *.scss set ft=scss.css

  " Make jQuery omnicompletion work for javascript files
  " autocmd BufNewFile,BufRead jquery.*.js set ft=javascript syntax=jquery
  " autocmd BufRead *.json set ft=javascript

  " erb to html
  " au BufNewFile,BufRead *.html.erb set filetype=html        " Set ERB filetype to HTML

  " PHP like HTML
  " autocmd bufnewfile,bufread *.php set ft=php.html syntax=html

  " Remove trailing spaces
  autocmd BufWritePre * :%s/\s\+$//e
endif

"""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'chmllr/elrodeo-colorscheme'
Bundle 'jordwalke/flatlandia'
Bundle 'ChrisKempson/Vim-Tomorrow-Theme'
Bundle 'jonathanfilip/lucius'
Bundle 'junegunn/seoul256.vim'
Bundle 'kylefiedler/base16-vim'

" Syntax
Bundle 'othree/html5.vim'
Bundle 'JulesWang/css.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Utilities
Bundle 'mattn/emmet-vim'
Bundle 'rking/ag.vim'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/matchit.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'vim-scripts/L9'
Bundle 'othree/vim-autocomplpop'
Bundle 'pbrisbin/vim-rename-file'
Bundle 'tomtom/tcomment_vim'

" Snippets
Bundle 'SirVer/ultisnips'
Bundle 'kylefiedler/vim-snippets'
Bundle 'vim-scripts/auto_mkdir'

"Configure ctrlp for SPEED
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

source $HOME/.vim/looks.vim
source $HOME/.vim/mappings.vim

" Remove commenting on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
