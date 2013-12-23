" Set leader to <spacebar>
let mapleader = " "

" Go back to normal mode with jk OR kj OR jj OR kk
imap jk <Esc>j
imap kj <Esc>k
imap jj <Esc>j
imap kk <Esc>k

" Clear search
nmap <leader>h :nohlsearch<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Faster new buffers
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>s :split <CR> :CtrlP <CR>
map <leader>S :split <C-R>=expand("%:p:h") . "/" <CR>
map <leader>v :vsplit <CR> :CtrlP <CR>
map <leader>V :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" Quickly indent
nmap <leader>i mmgg=G`m
vmap <leader>i mmgg=G`m

" Saves time
nmap <return> :

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>

" CtrlP
map <leader>g :CtrlP <CR>

" Open goto file
" nmap <D-t> :CtrlP<cr>
" imap <D-t> <esc>:CtrlP<cr>

" Ag
map <leader>a :Ag 

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><A-o> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-O> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-o> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-O> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Sorting
vmap <leader>1 :!sort<CR>
" map <leader>2 ?{<CR>jV}k!sortcss<CR>:noh<CR>
map <leader>2 ?{<CR>jV/^\s*\}\=$<CR>k:sort<CR>:let @/=''<CR>
map <leader>4 :g#\({\n\)\@<=#.,/}/sort<CR>

" Indent like textmate
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Comment lines with cmd+/
map <D-/> :TComment<cr>
vmap <D-/> :TComment<cr>gv

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
