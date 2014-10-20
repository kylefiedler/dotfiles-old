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
set list                          " show trailing whitespace and tabs

" Numbers
set number
set numberwidth=3

" Highlight cursor Line + Column
set cursorline

" Open window below
set splitbelow
set splitright

if has('gui_running')
  set t_Co=256
  set guioptions-=T
  set guioptions-=m
  set guioptions-=l
  set guioptions-=r
  set guioptions-=R
  set guioptions-=L
  set guifont=Input\ Mono:h18
  set linespace=8
  " let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_sep = ''
  set guioptions+=c
  set mousehide
  set background=light
  :colorscheme solarized
endif
