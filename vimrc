"keymap
filetype on
autocmd filetype tex nnoremap <F5> :w <BAR> :!make; mupdf main.pdf & disown <CR>
autocmd filetype tex nnoremap <F6> :w <BAR> :!make clean;

"myself
set nowrap
set rnu

"monokai theme
syntax enable
colorscheme monokai
map <C-L> 10zl
map <C-H> 10zh 
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set title
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"live-preview-latex
execute pathogen#infect()
syntax on
filetype plugin indent on
