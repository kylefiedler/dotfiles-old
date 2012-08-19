" faster viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=htmlcomplete#CompleteTags
autocmd FileType erb set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType sass set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType asc set fo+=crotqaw

autocmd BufNewFile,BufRead *.html.erb set filetype=html        " Set ERB filetype to HTML

au BufRead,BufNewFile *.css set ft=css syntax=css              " Set CSS filetype and sntax to CSS
au BufRead,BufNewFile *.less set ft=scss.css syntax=scss           " Set LESS filetype and syntax to SCSS
au BufRead,BufNewFile *.scss set ft=scss.css syntax=scss           " Set SCSS Filetype
au BufRead,BufNewFile *.jst set ft=jst syntax=jst              " Set JST filetype and sntax to JST
au BufRead,BufNewFile *.php set ft=html syntax=html

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_klasses_in_global = 1
let g:rubycomplete_rails = 1

"clojure.vim
let clj_highlight_builtins = 1

" Set zen coding to new shortcut
let g:user_zen_expandabbr_key = '<c-z>'
let g:user_zen_settings = {
\  'indentation' : ' '
\}

" Set ruby syntax for Gemfile
autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb

nnoremap <Leader>h :nohls<CR><C-L>

nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set tabstop=2 shiftwidth=2 expandtab " Set two space tabs:

set splitbelow                    " Split windows at bottom
set splitright                    " VSplit windows to the right
set ttimeoutlen=50                " Speed up <esc>
set showcmd                       " Display incomplete commands
set spell                         " I carnt spelll

" toggle past and nopaste
set pastetoggle=<F7>

" set cursorcolumn on some files
autocmd BufEnter *.haml setlocal cursorcolumn
autocmd BufEnter *.scss setlocal cursorcolumn
autocmd BufEnter *.less setlocal cursorcolumn
autocmd BufEnter *.coffee setlocal cursorcolumn
autocmd BufEnter *.html.erb setlocal cursorcolumn
autocmd BufEnter *.html setlocal cursorcolumn
autocmd BufEnter *.jst setlocal cursorcolumn


" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" switch between last two files
nnoremap <leader><leader> <c-^>
