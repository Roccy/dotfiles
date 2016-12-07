set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set notimeout
set nottimeout

set nowrap

set backspace=2

set laststatus=2

set autoindent
set smartindent
set invnumber
set relativenumber
set ruler

set tags=./tags;

set autoread

set showcmd

filetype off  " required

call plug#begin('~/.config/nvim/plugged')

"Plug 'critiqjo/lldb.nvim'
Plug 'morhetz/gruvbox'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'codegram/vim-codereview'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-jedi'

call plug#end()  " required

let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<leader>p'

let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0
set completeopt-=preview
inoremap <expr><C-p> pumvisible() ? "\<C-n>" : deoplete#manual_complete() 

let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='soft'

let g:neomake_open_list = 0
let g:neomake_python_enabled_makers = ['flake8', 'pylint']
let g:neomake_cpp_clang_exe = 'clang++38'
let g:neomake_cpp_clangtidy_exe = 'clang-tidy38'
let g:neomake_cpp_enabled_makers = ['clangtidy']
autocmd! BufWritePost,BufEnter * Neomake

set background=dark
colorscheme gruvbox
syntax on

nmap <F1> LLmode normal
nmap <F2> LLmode debug
nmap <leader>d <Plug>LLBreakSwitch

filetype plugin indent on  " required
