" leader commands
nmap <leader>vr :tabnew $MYVIMRC<cr>
nmap <leader>sv :so $MYVIMRC<cr>

" autoload changes to vimrc
augroup myvimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost */rcplugins/* source $MYVIMRC
  autocmd BufWritePost */rcsettings/* source $MYVIMRC
augroup END
