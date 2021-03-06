" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

"Fish shell not supported by Vundle so need to set to bash for this
set shell=/bin/bash
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'maralla/completor.vim'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'

call vundle#end()
" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=qrn1
set formatoptions-=tc
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Keymaps
nnoremap <F1> :w <CR> :AsyncRun -raw python %<CR>
nnoremap <F2> :AsyncStop <CR>
imap jk <Esc>
set timeout timeoutlen=100 ttimeoutlen=100

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set background=dark
let g:solarized_use16 = 1
colorscheme solarized

" Gui stuff
"set guioptions-=m
"set guioptions-=T
set wildmenu
set mouse=a
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

"Completor engines
let g:completor_python_binary = '~/anaconda3/bin/python'

"Asyncrun options
let g:asyncrun_open = 8
let $PYTHONUNBUFFERED=1

"Linting stuff
let g:ale_enabled = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_set_balloons = 0
let g:ale_lint_on_text_changed='normal'
let g:ale_linters = {'python': ['flake8']}
let g:ale_echo_delay = 300
