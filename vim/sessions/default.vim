" ~/Development/dotfiles/vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.4.8 on 23 August 2013 at 11:39:26.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egc
silent! set guifont=Anonymous\ Pro:h20
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([{'lnum': 16, 'col': 41, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/javascripts/commentable.js.coffee', 'text': '    $.getScript("#{@commentable.find(''a.comments-count'').attr(''href'')}?page=false")'}, {'lnum': 34, 'col': 32, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/javascripts/commentable.js.coffee', 'text': '    @commentable.on ''click'', ''.comments-count'', =>'}, {'lnum': 3, 'col': 13, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/javascripts/views/poll.js.coffee', 'text': '    ''click .comments-count'': ''ensureUserHasVoted'''}, {'lnum': 19, 'col': 11, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/activities/_activities.scss', 'text': '        a.comments-count {'}, {'lnum': 2, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/activities/_poll.scss', 'text': '  li:hover a.comments-count {'}, {'lnum': 5, 'col': 6, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/activities/_poll.scss', 'text': '    .comments-count {'}, {'lnum': 26, 'col': 8, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/activities/_poll.scss', 'text': '      .comments-count {'}, {'lnum': 3, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/_comments.scss', 'text': '    @extend %comments-count;'}, {'lnum': 74, 'col': 8, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/dashboard/_main-container.scss', 'text': '      .comments-count {'}, {'lnum': 120, 'col': 6, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/dashboard/_main-container.scss', 'text': '    .comments-count {'}, {'lnum': 1, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/extends/_comments-count.scss', 'text': '%comments-count {'}, {'lnum': 10, 'col': 10, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/extends/_extends.scss', 'text': '@import "comments-count";'}, {'lnum': 20, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/stylesheets/groups/_non-member-show.scss', 'text': '    @extend %comments-count;'}, {'lnum': 2, 'col': 130, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/comments/_meta_information.html.erb', 'text': '  <%= link_to comments_count(commentable), [commentable, :comments], remote: true, data: { disable_with: t(''loading'') }, class: ''comments-count'' %>'}, {'lnum': 18, 'col': 40, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/features/visitor/visitor_views_articles_spec.rb', 'text': '    expect(page).not_to have_content(''.comments-count'')'}, {'lnum': 11, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/support/features/commentable_on_page.rb', 'text': '      find(''.comments-count'').click'}, {'lnum': 60, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/support/features/poll_on_page.rb', 'text': '    poll_on_page.find(''.comments-count'').click'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Development/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 ~/Development/turpentine/app/admin/consents.rb
badd +80 ~/Development/turpentine/app/assets/stylesheets/base/_forms.scss
badd +21 ~/Development/turpentine/app/assets/stylesheets/components/_flashes.scss
badd +34 ~/Development/turpentine/app/assets/stylesheets/users/_edit.scss
badd +329 ~/Development/turpentine/config/locales/en.yml
badd +1 ~/Development/turpentine/app/views/comments/_comment.html.erb
badd +20 ~/Development/turpentine/app/views/consents/show.html.erb
badd +1 ~/Development/turpentine/app/assets/stylesheets/layout/header/_signed-in.scss
badd +54 ~/Development/turpentine/app/assets/stylesheets/layout/header/_search.scss
badd +27 ~/Development/turpentine/app/assets/stylesheets/layout/header/_user-nav.scss
badd +18 ~/Development/turpentine/app/assets/stylesheets/activities/_activities.scss
badd +17 ~/Development/turpentine/app/assets/stylesheets/activities/_comments.scss
badd +10 ~/Development/turpentine/app/assets/stylesheets/extends/_comments-count.scss
badd +2 ~/Development/turpentine/app/assets/stylesheets/_comments.scss
badd +10 ~/Development/turpentine/app/views/polls/_poll.html.erb
badd +13 ~/Development/turpentine/app/views/dashboards/show.html.erb
badd +2 ~/Development/turpentine/app/assets/stylesheets/activities/_poll.scss
badd +59 ~/Development/turpentine/app/assets/stylesheets/polls/_poll.scss
badd +130 ~/Development/turpentine/app/assets/stylesheets/dashboard/_main-container.scss
badd +3 ~/Development/turpentine/app/views/polls/show.html.erb
badd +24 ~/Development/turpentine/app/assets/stylesheets/components/_see-all-polls.scss
badd +10 ~/Development/turpentine/app/assets/stylesheets/components/_components.scss
badd +1 ~/Development/turpentine/app/views/dashboards/_conversations.html.erb
badd +15 ~/Development/turpentine/app/assets/stylesheets/polls/_show.scss
badd +1 ~/Development/turpentine/app/assets/stylesheets/components/_error.scss
badd +1 ~/Development/turpentine/app/assets/stylesheets/extends/_button.scss
badd +30 ~/Development/turpentine/app/assets/stylesheets/polls/_poll-body.scss
badd +32 ~/Development/turpentine/app/assets/stylesheets/surveys/_survey.scss
badd +30 ~/Development/turpentine/app/assets/stylesheets/_consents.scss
badd +2 ~/Development/turpentine/app/views/polls/_comments.html.erb
badd +1 ~/Development/turpentine/app/views/comments/index.js.erb
badd +7 ~/Development/turpentine/app/views/commentable/_last_commentor.html.erb
badd +16 ~/Development/turpentine/app/assets/javascripts/commentable.js.coffee
badd +20 ~/Development/turpentine/app/assets/stylesheets/groups/_non-member-show.scss
badd +3 ~/Development/turpentine/app/assets/stylesheets/_searches.scss
badd +1 ~/Development/turpentine/app/views/polls/_poll.mail.html.erb
badd +6 ~/Development/turpentine/app/views/poll_mailer/notification.html.erb
badd +0 vimrc
silent! argdel *
edit vimrc
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
" argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
let s:l = 109 - ((3 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
109
normal! 0
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 1
1wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
