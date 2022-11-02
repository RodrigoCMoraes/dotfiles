set nowrap
set nonu rnu
set cursorline
set splitbelow splitright
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
syntax enable

" default plugin directory: ~/.vim/plugged/
call plug#begin()

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'

call plug#end()

"NERDTree start

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"NERDTree end

"vim-jedi start
let g:jedi#completions_enabled = 0                " disable when not needed
let g:jedi#goto_command = "<leader>d"             " goto to definition
let g:jedi#goto_assignments_command = "<leader>g" " goto to function
let g:jedi#documentation_command = "K"            " show pydoc
let g:jedi#usages_command = "<leader>n"           " show usages of object
let g:jedi#completions_command = "<C-Space>"      " show completions
"vim-jedi end
