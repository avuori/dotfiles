let mapleader = ","

vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>

filetype plugin indent on

au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

set expandtab
set tabstop=4
set shiftwidth=4

call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme torte
