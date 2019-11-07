fun s:setup()
  " Variable
  let g:ctrlp_extensions          = ['buffertag','line','file','dir']
  let g:ctrlp_clear_cache_on_exit = 0
  let g:ctrlp_show_hidden         = 1
  "map <silent> <c-f> :CtrlPLine<cr>
endf
call s:setup()
