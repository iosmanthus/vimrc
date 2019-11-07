fun s:setup()
  " Variable
  let g:airline_detect_modified     = 1
  let g:airline_extensions          = ['branch', 'ale']
  let g:airline_powerline_fonts     = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.branch    = ''
  let g:airline_symbols.readonly  = ''
  let g:airline_symbols.linenr    = '☰'
  let g:airline_symbols.maxlinenr = ''
endfun
call s:setup()
