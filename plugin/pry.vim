if exists("g:loaded_pry") || &cp || v:version < 700
  finish
endif

let g:pry_map = {
      \ 'ruby' : "require 'pry'; binding.pry",
      \ 'javascript' : 'debugger',
      \ 'javascript.jsx' : 'debugger',
      \ 'elixir' : 'require IEx; IEx.pry',
      \}

function! pry#insert()
  if has_key(g:pry_map, &filetype)
    let text = get(g:pry_map, &filetype)
    call feedkeys('o', 'i')
    call feedkeys(text)
  else
    echo 'No mapping defined for filetype: ' . &filetype
  endif
endfunction
