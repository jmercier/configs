
colorscheme wombat
"hi normal guibg=#2E3436 guifg=#FFFFFF
"hi LineNr guifg=#000000
"hi Statement guifg=#58D470
hi NonText guifg=#000000

set list
set listchars=tab:\|\ ,trail:-,precedes:\\

hi SpecialKey guifg=#111111 guibg=#222222

set showmatch
":NoMatchParen

map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
"map <C-w> :q<CR>
"map <C-s> :w<CR>

map <C-j> :bn!<CR>
map <C-k> :bp!<CR>

set switchbuf=usetab
set guioptions-=T

set gfn=Monospace\ 8
"set gfn=Inconsolata\ 10
"set gfn=Bitstream\ Vera\ Sans\ Mono\ 8
"set gfn=Droid\ Sans\ Mono\ 10
"set gfn=Monospace\ 10
"set gfn=DejaVu\ Sans\ Mono\ 8
syntax on

set guioptions-=m

