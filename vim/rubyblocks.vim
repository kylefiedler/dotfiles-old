"""""""""""""""""""""""""""""""""
" ruby blocks swapping thing
"""""""""""""""""""""""""""""""""
function! RubyTrim(string)
  return substitute(a:string, "^\\s\\+\\|\\s\\+$", "", "g")
endfunction

function! RubySplitOneliner()
  let lineno = line(".")
  let line = getline(lineno)
  let leftBrace = stridx(line, "{")
  let rightBrace = strridx(line, "}")
  let indent = matchstr(line, "^\\s\\+")
  let open = strpart(line, len(indent), leftBrace - len(indent))
  let content = strpart(line, leftBrace + 1, rightBrace - leftBrace - 1)
  call setline(lineno, indent . RubyTrim(open) . " do")
  call append(lineno, [indent . "  " . RubyTrim(content), indent . "end"])
endfunction

function! RubyJoinOneliner()
  let pos = getpos(".")
  call cursor(pos[1] + 1, 0)
  let lineno = search("do$", "bW")
  let line = getline(lineno)
  let indent = matchstr(line, "^\\s\\+")
  let open = RubyTrim(substitute(line, "do\\s*$", "", ""))
  let contents = RubyTrim(getline(lineno + 1))
  call setline(lineno, indent . open . " { " . contents . " }")
  exec (lineno + 1) . "," . (lineno + 2) . "d"
  let pos = getpos(".")
  call cursor(pos[1] - 1, 0)
endfunction

function! RubyIsOneliner()
  return match(getline(line(".")), "^\\s\\+[a-zA-Z0-9_.]\\+\\s\\+{")
endfunction

function! RubyToggleOneliner()
  if RubyIsOneliner() == -1
    call RubyJoinOneliner()
  else
    call RubySplitOneliner()
  endif
endfunction

nmap <buffer> <Bar> :call RubyToggleOneliner()<CR>

