fun s:setup()
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()

  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction


  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  nmap <silent> <c-k> <Plug>(coc-diagnostic-prev)
  nmap <silent> <c-j> <Plug>(coc-diagnostic-next)

  nnoremap <silent> K :call <SID>show_documentation()<CR>
  inoremap <silent><expr> <c-space> coc#refresh()

  function! s:show_documentation()
    if &filetype == 'vim'
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  set completeopt-=preview
endf
call s:setup()
