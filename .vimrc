execute pathogen#infect()
:syntax on
:set autoindent
:set expandtab
:set softtabstop=2
:set shiftwidth=2
:set number
:set ruler
:set ignorecase
:set hlsearch
:set magic
:set noerrorbells
:set novisualbell
:set mat=2
:set encoding=utf8
:set nobackup
:set nowb
:set noswapfile
:set laststatus=2
:set autoread
:set background=dark 
set t_Co=256
let g:solarized_termtrans = 1
colorscheme solarized 
set guicursor+=n-v-c:blinkon0
set guifont=Monaco:h16 
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.swo$', '\.DS_Store$']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
map \ :NERDTreeToggle<cr>
