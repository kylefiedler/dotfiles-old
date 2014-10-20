" Set leader to <spacebar>
let mapleader = " "

" Go back to normal mode with jk OR kj OR jj OR kk
imap jk <Esc>j
imap kj <Esc>k
imap jj <Esc>j
imap kk <Esc>k

" Clear search
nmap <leader>c :nohlsearch<CR>

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
map <D-p> :CtrlP <CR>

" Emmet Expand
let g:user_emmet_expandabbr_key = '<c-e>'

" Rename
map <Leader>r :RenameFile<CR>

" Buffer
map <Leader><Leader> :bn
map <Leader><S-Space> :bp

" Ag
map <D-F> :Ag
map <leader>a :Ag

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><A-o> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-O> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-o> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-O> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Sorting
vmap <leader>1 :!sort<CR>
map <leader>2 ?{<CR>jV/^\s*\}\=$<CR>k:sort<CR>:let @/=''<CR>

" Indent like textmate
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Comment lines with cmd+/
map <D-/> :TComment<cr>
vmap <D-/> :TComment<cr>gv

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Move selection up/down (add =gv to reindent after move)
map <D-C-Up> :m-2<CR>gv
map <D-C-Down> :m'>+<CR>gv

" Search Dash
nmap <silent> <leader>d <Plug>DashSearch
