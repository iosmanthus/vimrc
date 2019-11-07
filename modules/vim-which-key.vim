fun s:setup()
  " Mapping:
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
  fun CocListDiagnostics()
    execute 'CocList diagnostics'
  endf
  fun CocListBuffers()
    execute 'CocList buffers'
  endf
  fun CocListVimCommands()
    execute 'CocList vimcommands'
  endf
  fun CocListGrep()
    execute 'CocList grep'
  endf
  fun CocListMru()
    execute 'CocList mru'
  endf
  fun CocListCommands()
    execute 'CocList commands'
  endf

  " Variable:
  let g:which_key_map =  {}
  let g:which_key_map[' '] = {
        \'name': '+coc',
        \'n': ['<Plug>(coc-rename)', 'rename'],
        \'d': ['<Plug>(coc-definition)', 'go-definition'],
        \'r': ['<Plug>(coc-references)', 'find-references'],
        \'f': ['<Plug>(coc-format-selected)', 'format'],
        \'a': ['CocListDiagnostics()',  'list-diagnostics'],
        \'c': ['CocListCommands()', 'list-commands'],
        \'b': ['CocListBuffers()', 'list-buffers'],
        \'v': ['CocListVimCommands()', 'list-vimcommands'],
        \'g': ['CocListGrep()', 'grep'],
        \'l': ['CocListMru()', 'mru-files'],
        \}
  let g:which_key_map.e = {
        \'name': '+easymotion',
        \'j': ['<Plug>(easymotion-j)', 'down'],
        \'k': ['<Plug>(easymotion-k)', 'up'],
        \'F': ['<Plug>(easymotion-F)', 'find-char-left'],
        \'f': ['<Plug>(easymotion-f)', 'find-char-right'],
        \'t': ['<Plug>(easymotion-t)', 'find-till-right'],
        \'T': ['<Plug>(easymotion-T)', 'find-till-left'],
        \'w': ['<Plug>(easymotion-w)', 'foreward-to-word-head'],
        \'b': ['<Plug>(easymotion-b)', 'backward-to-work-head'],
        \'e': ['<Plug>(easymotion-e)', 'foreward-to-word-end'],
        \'g': ['<Plug>(easymotion-ge)', 'backward-to-word-end'],
        \}
  let g:which_key_map.w = {
        \ 'name' : '+windows' ,
        \ 'n' : ['<C-W>n', 'create-window']         ,
        \ 'o': ['<C-W>o', 'close-other-windows']    ,
        \ 'w' : ['<C-W>w', 'other-window']          ,
        \ 'd' : ['<C-W>c', 'delete-window']         ,
        \ '=' : ['<C-W>=', 'balance-window']        ,
        \ 's' : ['<C-W>s', 'split-window-v']        ,
        \ 'v' : ['<C-W>v', 'split-window-h']        ,
        \ 'h' : ['<C-W>h', 'window-left']           ,
        \ 'j' : ['<C-W>j', 'window-below']          ,
        \ 'l' : ['<C-W>l', 'window-right']          ,
        \ 'k' : ['<C-W>k', 'window-up']             ,
        \ }

  let g:which_key_map.f = {
        \'name' : '+file',
        \ 'v': [':e ~/.vim/vimrc','open-vimrc'],
        \ 'z': [':e ~/.zshrc','open-zshrc'],
        \ 't': ['NERDTreeToggle', 'nerdtree'],
        \ 'r': [':e!', 'reload'],
        \ 's': ['SudoWrite', 'sudo-write'],
        \}
  let g:which_key_map.g = {
        \ 'name': '+git',
        \ 'b': [':Gblame', 'git blame'] ,
        \ 's': [':Gstatus', 'git status'],
        \}


  call which_key#register('<Space>', "g:which_key_map")
  nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
  vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
endf
call s:setup()
