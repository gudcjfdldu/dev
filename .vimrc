call plug#begin()

Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'benmills/vimux'
Plug 'pitluga/vimux-nose-test'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/ctrlp-z'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   General Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets history line
set history=500
" Mapping <leader> => ,
let mapleader=","
" Show current position at bottom-right
set ruler
set lazyredraw
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Show line number
set number
" Set line number relative
set bs=indent,eol,start
set noimd
set encoding=utf-8
set fileencodings=utf-8,cp949
set nowrap
language en_US
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Search Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase
" Be smart when searching
set smartcase
" Highlight search last result
set hlsearch
" Move cursor when searching
set incsearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Color Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Enable
syntax on
" Use color scheme 'onedark'
colorscheme seti 
hi Visual ctermfg=NONE  ctermbg=0       term=reverse    cterm=reverse   guifg=NONE      guibg=#4fa5c7   gui=NONE
hi Search ctermfg=16  ctermbg=111    term=NONE    cterm=NONE   guifg=#151718      guibg=#55b5db      gui=NONE
set cursorline
hi CursorLine term=NONE cterm=NONE guibg=Grey40
map <F4> :NextColorScheme<CR>
map <F5> :PrevColorScheme<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Indent Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab == 4 space
set tabstop=4
set shiftwidth=4
set softtabstop=4
" Using tab like 4 space
set expandtab
set smarttab
" Auto Indent
"set ai
" Smart Indent
"set si
autocmd FileType javascript,css,html,lua setlocal ts=2 sts=2 sw=2
let g:indent_guides_enable_on_vim_startup = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Key Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ,vi =>  Show edit tab .vimrc
nnoremap <leader>vi :tabe ~/.vimrc<CR>
" ,src => Reload .vimrc
nnoremap <leader>src :source ~/.vimrc<CR>
nnoremap <leader>b :set wrap!<CR>
" ,q => Quit
map <leader>q <ESC><ESC>:q<CR>
map <leader>! <ESC><ESC>:q!<CR>
" F2 => Save File
imap <F2> <ESC><ESC>:w<CR>
map <F2> <ESC><ESC>:w<CR>
" ,w => Save File
imap <leader>w <ESC><ESC>:w<CR>
map <leader>w <ESC><ESC>:w<CR>
" F3 => Toggle line number
map <F3> <ESC>:set nu! relativenumber!<CR>
" jk => esc, Escape insert mode
inoremap jk <ESC>
inoremap ㅓㅏ <esc>
vnoremap < <gv
vnoremap > >gv
map <leader>nh :noh<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Moving tab Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   copy to clipboard Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <leader>y, <leader>p : yank to or paste from the system clipboard
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>co ggVG*y
"set clipboard=unnamed


nmap <silent> <leader>t :RunNoseTestFocused<CR>
nmap <silent> <leader>T :RunNoseTestBuffer<CR>

let g:NERDTreeChDirMode = 1

let NERDTreeIgnore = ['\.pyc$']

" <Leader>N toggles NERDTree (across tab)
map <Leader>N <plug>NERDTreeTabsToggle<CR>
map <F9> :NERDTreeToggle<CR>

