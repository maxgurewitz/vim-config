if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'mileszs/ack.vim.git'
NeoBundle 'kien/ctrlp.vim.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'rust-lang/rust.vim.git'
NeoBundle 'kchmck/vim-coffee-script.git'
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'digitaltoad/vim-jade.git'
NeoBundle 'mustache/vim-mustache-handlebars.git'
NeoBundle 'cespare/vim-toml.git'
NeoBundle 'lambdatoast/elm.vim.git'
NeoBundle 'othree/yajs.vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

syntax on
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set number
set ruler
set ignorecase
set hlsearch
set magic
set noerrorbells
set novisualbell
set mat=2
set encoding=utf8
set nobackup
set nowb
set noswapfile
set laststatus=2
set autoread
set scrolloff=15
set clipboard=unnamed
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set guicursor+=n-v-c:blinkon0
set guifont=Monaco:h16
set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.spark set filetype=html

if has("gui_running")
  set background=dark
  set t_Co=256
  let g:solarized_termtrans = 1
  colorscheme solarized
endif

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.swo$', '\.DS_Store$']

nmap [ :tabp<cr>
nmap ] :tabn<cr>
nmap \ :tabclose<cr>
nmap tn :tabnew<cr>
nmap ` :NERDTreeToggle<cr>
nmap <space> :noh<cr>
nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>

" Remove whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e
