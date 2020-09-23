"return '[\s]' if trailing white space is detected
"return '' otherwise
function! TrailingSpaceWarning()
  if !exists("b:trailing_space_warning")
    if !&modifiable
      let b:trailing_space_warning = ''
      return b:trailing_space_warning
    endif
    if search('\s\+$', 'nw') != 0
      let b:trailing_space_warning = '[space]'
    else
      let b:trailing_space_warning = ''
    endif
  endif
  return b:trailing_space_warning
endfunction
" Removing trailing spaces from ruby files (by @bbcoimbra)
function! RemoveTraillingSpaces()
  let cursor_pos = getpos(".")
  %s/[ \t]*$//g
  call setpos(".", cursor_pos)
endfunction
