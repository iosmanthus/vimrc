fun s:setup()
  " Auto command
  " autocmd vimenter * NERDTree
  "let g:NERDTreeIndicatorMapCustom = {
  "      \ "Modified"  : "*",
  "      \ "Staged"    : "+",
  "      \ "Untracked" : "?",
  "      \ "Renamed"   : "@",
  "      \ "Unmerged"  : "=",
  "      \ "Deleted"   : "-",
  "      \ "Dirty"     : "x",
  "      \ "Clean"     : "|",
  "      \ 'Ignored'   : "~",
  "      \ "Unknown"   : "$"
  "      \ }
  let g:NERDTreeWinPos = 'left'
  let g:nerdtree_tabs_open_on_new_tab = 1
endfun
call s:setup()
