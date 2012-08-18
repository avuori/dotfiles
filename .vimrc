let mapleader = ","

" Coffee script
vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
let coffee_make_options = '--bare --output ~/tmp/coffeecompiles/'.expand("%:h")
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

map § ~
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set expandtab
set tabstop=4
set shiftwidth=4

set incsearch
set ignorecase
set smartcase

call pathogen#infect()
syntax on
colorscheme delek
filetype plugin indent on
