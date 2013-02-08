"""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""
" Set Leader to <spacebar>
let mapleader = " "

" open ~/.vimrc
map ,; :tabe ~/.vimrc<CR><C-W>_
map ,. :tabe ~/.vim/miscelaneous.vim<CR><C-W>_

" Go back to normal mode with jk OR kj OR jj OR kk
imap jk <Esc>
imap kj <Esc>
imap jj <Esc>
imap kk <Esc>

" Use command t
map <leader>g :CommandTFlush<cr>\|:CommandT<cr>
"map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
"map <leader>ga :CommandTFlush<cr>\|:CommandT app/assets/<cr>

" Opens an edit command with the path of the currently edited file filled in
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>s :split <CR>
map <Leader>S :split <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>v :vsplit <CR>
map <Leader>V :vsplit <C-R>=expand("%:p:h") . "/" <CR>

" NERDTree
map <Leader>n :NERDTree <C-R>=expand("%:p:h") . "/" <CR>
autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb

" Go to symbol
nmap <leader>T :GotoSymbol<CR>

" Unset highlighting
nnoremap <Leader>h :nohls<CR><C-L>
nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" CSS Sorting
vmap <Leader>1 :!sort<CR>
" map <Leader>2 ?{<CR>jV/^\s*\}\=$<CR>k:sort<CR>:let @/=''<CR>
map <Leader>2 ?{<CR>jV}k!sortcss<CR>:noh<CR>
map <Leader>3 !sortcss<CR>
map <Leader>4 :g#\({\n\)\@<=#.,/}/sort<CR>

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
