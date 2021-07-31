" _       _ _         _
"(_)_ __ (_) |___   _(_)_ __ ___
"| | '_ \| | __\ \ / / | '_ ` _ \
"| | | | | | |_ \ V /| | | | | | |
"|_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"

" SETS
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" PLUGINS THROUGH vim-plug
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fneu/breezy'
Plug 'navarasu/onedark.nvim'
Plug 'itchyny/lightline.vim'
Plug 'tmsvg/pear-tree'
call plug#end()

" VISUAL CUSTOMIZATION
colorscheme onedark
highlight Normal guibg=none
highlight EndOfBuffer guibg=none
set termguicolors " if you want to run vim in a terminal
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" MAPS
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" AUTOCOMMANDS
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup DENDY
    autocmd!
         autocmd BufWritePre * :call TrimWhitespace()
augroup END
