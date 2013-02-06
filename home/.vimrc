set backspace=indent,eol,start

syntax on
filetype plugin on
filetype indent on
set ruler
set showcmd
set incsearch
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""""""
"Folding
""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldmethod=indent
set foldminlines=2
set foldnestmax=2



""""""""""""""""""""""""""""""""""""""""
" Formatting/Layout
""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set nocp

""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""
set showmatch
set laststatus=2
set number

set formatoptions=croqlt
set ts=4
set softtabstop=4
set shiftwidth=4
set cindent
"set textwidth=79
set cino=(0,t0

im :<CR> :<CR><TAB>

au BufNewFile,BufRead *.cu set ft=cu

let g:tex_flavor="latex"
"autocmd FileType python compiler pylint


" Clang
"
let g:clang_complete_copen = 1
let g:clang_library_path="/usr/lib/llvm"
let g:clang_use_library = 1
let g:clang_complete_hl_errors = 1
let g:clang_complete_periodic_quickfix = 1
let g:clang_complete_auto = 0
let g:clang_auto_select = 0


au BufNewFile,BufRead *.cu set ft=cpp
au BufNewFile,BufRead *.cuh set ft=cpp
