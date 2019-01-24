call plug#begin('~/.vim/plugged')
    Plug 'lfv89/vim-interestingwords'
call plug#end()

" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'davidhalter/jedi-vim'
    Plug 'lfv89/vim-interestingwords'
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'tpope/vim-surround'
    Plugin 'elzr/vim-json'
    Plugin 'posva/vim-vue'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()            
filetype plugin indent on   

"keymap - general
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap jk <Esc>
nnoremap <C-n> :NERDTree<CR>

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
set mousefocus
set splitbelow
set splitright

"style - bottom line
set title           "show filename as title of status bar
set ruler           "enabe ruler of status bar
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%) "show date and time in status bar"

set mouse+=a
if &term =~ '^screen'
    set ttymouse=xterm2
endif
