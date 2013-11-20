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
set clipboard=unnamed

" Set filetype and omnicompletion
"""""""""""""""""""""""""""""""""
if has("autocmd")
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType erb setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType php setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType scss setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

  " Make CSS omnicompletion work for SASS and SCSS
  au BufRead,BufNewFile *.scss set ft=scss.css

  " Make jQuery omnicompletion work for javascript files
  autocmd BufNewFile,BufRead jquery.*.js set ft=javascript syntax=jquery
  autocmd BufRead *.json set ft=javascript

  " erb to html
  au BufNewFile,BufRead *.html.erb set filetype=html        " Set ERB filetype to HTML
  au BufNewFile,BufRead *.erb set filetype=html        " Set ERB filetype to HTML

  " PHP like HTML
  autocmd bufnewfile,bufread *.php set ft=php.html syntax=html
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
Bundle 'altercation/solarized', {'rtp': 'vim-colors-solarized/'}
Bundle 'DAddYE/soda.vim'
Bundle 'kylefiedler/TuttiColori-Colorscheme'
Bundle 'chriskempson/vim-tomorrow-theme'

" Syntax
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'

" Utilities
Bundle 'mattn/zencoding-vim'
Bundle 'rking/ag.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-matchit'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/tComment'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'kylefiedler/vim-snippets'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'vim-scripts/auto_mkdir'

filetype plugin indent on

" Neocomplcache options
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_max_list = 10
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_enable_auto_select = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Set zen coding to new shortcut
let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_settings = {
\  'indentation' : ' '
\}

"Configure ctrlp for SPEED
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

let delimitMate_expand_cr = 1

source $HOME/.vim/looks.vim
source $HOME/.vim/mappings.vim
