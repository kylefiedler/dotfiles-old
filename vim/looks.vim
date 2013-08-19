"""""""""""""""""""""""""""""""""
" Looks
"""""""""""""""""""""""""""""""""
syntax on
set foldmethod=syntax
set foldnestmax=3                 " deepest fold level
set nofoldenable                  " don't fold by default
set ruler                         " always show the cursor position
set showmatch                     " show matching brackets.
set mat=5                         " bracket blinking.
set laststatus=2                  " always show status line (not only for multiple windows)
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
set list                          " show trailing whiteshace and tabs

" Numbers
set number
" set relativenumber
set numberwidth=2

" Highlight cursor Line + Column
set cursorline
set cursorcolumn
"
" Open widnow below
set splitbelow
set splitright

if has('gui_running')
  set guioptions-=T
  set guioptions-=m
  set guioptions-=l
  set guioptions-=r
  set guioptions-=R
  set guioptions-=L
  set guioptions+=c
  set mousehide
  set guifont=Anonymous\ Pro:h20
  let g:Powerline_colorscheme = 'solarized'
  set t_Co=256
  set background=light
  :colorscheme solarized
endif
