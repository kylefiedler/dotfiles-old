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
set cursorline                    " highlight cursor line
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
set list                          " show trailing whiteshace and tabs


if has('gui_running')
  set guioptions-=T
  set guioptions-=m
  set guioptions-=l
  set guioptions-=r
  set guioptions-=R
  set guioptions-=L
  set mousehide
  set guifont=Bitstream\ Vera\ Sans\ Mono:h16
  set t_Co=256
  :colorscheme vylight
endif

set numberwidth=4
set relativenumber
