set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'wakatime/vim-wakatime'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'davidhalter/jedi-vim'
    Bundle 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

call plug#begin('~/.vim/plugged')
    Plug 'lfv89/vim-interestingwords'
call plug#end()

"edit setting
set nowrap          "lines can be greater than shell width(maybe necessary to scroll horizontally)
set rnu             "enable relative number
syntax enable       "enable highlight
colorscheme monokai "enable monokai theme
set tabstop=4       "tab equals 4 spaces
set shiftwidth=4    "indent new line INSERT mode
set expandtab       "fill tabs with space
set autoindent      "indent new line NORMAL mode
set smartindent     "indent according to text style
set cursorline
let g:airline_theme='simple'
