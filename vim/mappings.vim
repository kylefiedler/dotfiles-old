" Set Leader to <spacebar>
let mapleader = " "

" Go back to normal mode with jk OR kj OR jj OR kk
imap jk <Esc>jk
imap kj <Esc>kj
imap jj <Esc>jj
imap kk <Esc>kk

map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>s :split <CR> :CtrlP <CR>
map <Leader>S :split <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>v :vsplit <CR> :CtrlP <CR>
map <Leader>V :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" NERDTree
nmap <Leader>n :NERDTreeToggle<cr>

" CtrlP
map <Leader>g :CtrlP <CR>

" Ag
map <Leader>a :Ag

" Indent
nmap <leader>i ==
vmap <leader>i ==

" Saves time
nmap <return> :

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Sorting
vmap <Leader>1 :!sort<CR>
map <Leader>2 ?{<CR>jV}k!sortcss<CR>:noh<CR>

" Indent like textmate
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" map tab to autocomplete
imap <s-tab> <c-p>
set complete=.,w,b,t

" omnicomplete
imap <c-space> <c-x><c-o>

" line complete
imap <c-S-space> <c-x><c-l>
