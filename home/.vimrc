set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set background=dark
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'peplin/vim-phabrowse'
Plugin 'tpope/vim-fugitive'
Plugin 'stephpy/vim-yaml'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set backspace=indent,eol,start

syntax on
filetype plugin on
filetype indent on
set ruler
set showcmd
set incsearch
set ignorecase
set smartcase
set vb

""""""""""""""""""""""""""""""""""""""""
"Folding
""""""""""""""""""""""""""""""""""""""""
" set foldenable
" set foldmethod=indent
" set foldminlines=2
" set foldnestmax=2



""""""""""""""""""""""""""""""""""""""""
" Formatting/Layout
""""""""""""""""""""""""""""""""""""""""
set autoindent
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
set textwidth=0
set cino=(0,t0

im :<CR> :<CR><TAB>

au BufNewFile,BufRead *.cu set ft=cu

" Plugin
let g:ctrlp_map = '<c-p>'
let g:ycm_confirm_extra_conf = 0

Glaive codefmt plugin[mappings]='='
    \ clang_format_executable='/usr/local/bin/clang-format'
    \ clang_format_style='google'

highlight Pmenu ctermbg=white cterm=bold

au BufRead *.yml set ft=
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h11
" colorscheme solarized

" Syntastic {
    let g:syntastic_enable_signs=1
    let g:syntastic_python_checkers=['flake8']
    let g:syntastic_python_flake8_args = "--max-line-length=120"
    let g:syntastic_cpp_include_dirs = ['source', 'build/source', '/usr/include']
    let g:syntastic_cpp_compiler = 'clang++'
    let g:syntastic_cpp_compiler_options = ' -std=c++11'
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
" }


" augroup autoformat
"    autocmd!
"    autocmd FileType cpp AutoFormatBuffer
" augroup END

" Airline {
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
" } 

" ctrlp {
     let g:ctrlp_max_files = 0
     let g:ctrlp_user_command = {
       \ 'types': {
         \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
         \ 2: ['.hg', 'hg --cwd %s locate -I .'],
         \ },
       \ 'fallback': 'find %s -type f'
       \ }
" }

" solarized {
    let g:solarized_termcolors=256
" }
    
" YouCompleteMe {
"    let g:ycm_confirm_extra_conf = 0
" }
"
" ClangFormat {
    augroup autoformat
        autocmd!
        autocmd FileType cpp AutoFormatBuffer
    augroup END
" }
"
nnoremap <leader>jd :YcmCompleter GoTo<CR>
" vim-airline {
     let g:airline_powerline_fonts=1
     let g:Powerline_symbols='unicode'
" }
