let mapleader = ","

" stolen shamelessly from
" https://github.com/christoomey/dotfiles/blob/master/vim/vimrc
function! g:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

" get vimrc path
let g:vimrc_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" setup Vundle
execute "source ".g:vimrc_dir."/vimrc.vundle_setup.vim"

" pull in settings
call g:SourceConfigFilesIn('rcsettings')

