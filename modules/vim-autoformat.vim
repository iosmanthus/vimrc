fun s:setup()

  " Auto command
  autocmd FileType make let b:autoformat_autoindent=0
  autocmd FileType snippets let b:autoformat_autoindent=0
  autocmd FileType zsh let b:autoformat_autoindent=0
  autocmd FileType asm let b:autoformat_autoindent=0
  autocmd FileType markdown let b:autoformat_autoindent=0
  autocmd FileType yaml let b:autoformat_autoindent=0
  autocmd FileType sql let b:autoformat_autoindent=0
  autocmd FileType toml let b:autoformat_autoindent=0
  autocmd FileType proto let b:autoformat_autoindent=0
  au BufWrite * :Autoformat
endfun
call s:setup()
