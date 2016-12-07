if 0 | endif

if &compatible
    set nocompatible
endif

" Required:
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins here
NeoBundleFetch 'neomake/neomake.vim'
NeoBundleFetch 'vim-airline/vim-airline.vim'
NeoBundleFetch 'vim-airline/vim-airline-themes.vim'
" ##


call neobundle#end()
filetype plugin indent on

NeoBundleCheck 
