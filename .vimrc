if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'martinda/Jenkinsfile-vim-syntax'
NeoBundle 'jimmyhchan/dustjs'
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
NeoBundle 'elmcast/elm-vim.git'
NeoBundle 'othree/yajs.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'lervag/vimtex'
NeoBundle 'mustache/vim-mustache-handlebars'

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*elm\-stuff*
set guicursor+=n-v-c:blinkon0
set guifont=Monaco:h16
set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread
set backupcopy=yes

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
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|coverage'
let g:elm_format_autosave = 1
let g:elm_classic_highlighting = 1
let mapleader = ","

nmap [ :tabp<cr>
nmap ] :tabn<cr>
nmap { :bp<cr>
nmap } :bn<cr>
nmap \ :tabclose<cr>
nmap ,tn :tabnew<cr>
nmap ` :NERDTreeToggle<cr>
nmap <space> :noh<cr>
nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>
nmap ,tf :NERDTreeFind<CR>
nmap ,fj :execute '%!python -m json.tool'<CR>

" Remove whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

" Disable syntax highlighting for scss.  Why so slow :(!?
autocmd Filetype scss setlocal syntax=OFF

autocmd Filetype elm setlocal ts=4 sts=4 sw=4
