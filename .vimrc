" avuori .vimrc
let mapleader = ","

vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
let coffee_make_options = '--bare --output ~/tmp/coffeecompiles/'.expand("%:h")

au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch

set showmatch

set backspace=indent,eol,start

imap jj <Esc>

" splits
map <leader>w <C-w>v<C-w>l
map <leader>s <C-w>s<C-w>j
map <leader>q <C-w>q

set ruler

set list
set listchars=tab:▸\ ,extends:❯,precedes:❮,trail:.,nbsp:.

call pathogen#infect()
syntax on
filetype plugin indent on

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map § ~

map <space> /
map <c-space> ?

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>ö :bNext<cr>
map <leader>ä :bprev<cr>

map <leader>pp :setlocal paste!<cr>

imap <leader>§ #{}<esc>i

"map capslock as esc
map <F2> :!sh -icx '
    \xmodmap -e "clear lock"; 
    \xmodmap -e "keycode 0x42 = Escape"
    \'<CR>

"remove capslock mapping
map <F3> :!sh -icx '
    \xmodmap -e "keycode 0x42 = Caps_Lock";
    \xmodmap -e "add lock = Caps_Lock"
    \'<CR>


map <leader>m :NERDTreeToggle<CR>
