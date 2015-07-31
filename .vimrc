if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=/Users/mgurewitz/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/Users/mgurewitz/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'git@github.com:mileszs/ack.vim.git'
NeoBundle 'git@github.com:kien/ctrlp.vim.git'
NeoBundle 'git@github.com:scrooloose/nerdtree.git'
NeoBundle 'git@github.com:rust-lang/rust.vim.git'
NeoBundle 'git@github.com:kchmck/vim-coffee-script.git'
NeoBundle 'git@github.com:altercation/vim-colors-solarized.git'
NeoBundle 'git@github.com:tpope/vim-commentary.git'
NeoBundle 'git@github.com:tpope/vim-fugitive.git'
NeoBundle 'git@github.com:digitaltoad/vim-jade.git'
NeoBundle 'git@github.com:mustache/vim-mustache-handlebars.git'
NeoBundle 'git@github.com:cespare/vim-toml.git'
NeoBundle 'git@github.com:lambdatoast/elm.vim.git'

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
