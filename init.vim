syntax on
set hlsearch
set ignorecase
set incsearch
set number
set noswapfile
inoremap jk <ESC>
let mapleader = "'"
set colorcolumn=80                                                              
highlight ColorColumn ctermbg=8

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
