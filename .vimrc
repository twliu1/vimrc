unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
" vimrc
" call plug#begin()
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" call plug#end()

" if executable('rust-analyzer')
"   au User lsp_setup call lsp#register_server({
"         \   'name': 'Rust Language Server',
"         \   'cmd': {server_info->['rust-analyzer']},
"         \   'whitelist': ['rust'],
"         \ })
" endif

" Enable line numbers
set number relativenumber numberwidth=3

" Enable syntax highlighting
syntax enable

" Set auto-indentation
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable line wrapping
set wrap

" Highlight search results as you type
set incsearch
set hlsearch

" Show matching parentheses
set showmatch

" Display ruler with line and column numbers
set ruler

" Highlight current line
set cursorline

" Enable mouse support in all modes
set mouse=a

" Display matching brackets/parentheses
set showmatch

" Enable clipboard support (requires vim with +clipboard)
set clipboard=unnamedplus

" Enable file type detection
filetype plugin indent on

" Enable line and column position in the status line
set ruler

" Enable auto-command syntax
filetype indent plugin on

" Enable auto-indentation for specific file types
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType html,xml,xhtml,css,scss,javascript,json setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Highlight trailing whitespaces
autocmd BufRead,BufNewFile * if &ft !=# '' | match ErrorMsg '\s\+$' | endif

" Set a nice color scheme (choose your preferred one)
set termguicolors
colorscheme desert

" Enable syntax-based folding
set foldmethod=syntax
set foldlevel=1

" Save and restore view (cursor position, folds, etc.) upon re-opening a file
autocmd BufWinLeave * if &ft !=# '' && &readonly | call mkdir(expand('~/.vim/view'), 'p') | mkview | endif
autocmd BufWinEnter * if &ft !=# '' | silent loadview | endif

