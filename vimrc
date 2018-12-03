"keymap - general
map <C-L> 10zl      "CTRL+l moves 10 columns to right
map <C-H> 10zh      "CTRL+h moves 10 columns to left

"keymap - tex files
filetype on         "enable filetype detection
"save, compile and show pdf in tex files
autocmd filetype tex nnoremap <F5> :w <BAR> :!make; mupdf main.pdf & disown <CR> 
"save and clean tex compilation files
autocmd filetype tex nnoremap <F6> :w <BAR> :!make clean;                        
filetype off         "disable filetype detection

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

"style - bottom line
set title           "show filename as title of status bar
set ruler           "enabe ruler of status bar
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%) "show date and time in status bar"
