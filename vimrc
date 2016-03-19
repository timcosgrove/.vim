" set leader
let mapleader = ","

" get vimrc path
let g:vimrc_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" stolen shamelessly from
" https://github.com/christoomey/dotfiles/blob/master/vim/vimrc
function! g:SourceConfigFilesIn(directory)
 let directory_splat = g:vimrc_dir . '/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

" setup Vundle and plugins
execute "source ".g:vimrc_dir."/vimrc.vundle_setup.vim"

" pull in settings
call g:SourceConfigFilesIn('rcsettings')

