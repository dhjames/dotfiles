" Add plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'google/yapf'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'craigemery/vim-autotag'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mileszs/ack.vim'
Plug 'stevearc/vim-arduino'
Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'trevordmiller/nova-vim'
Plug 'terryma/vim-smooth-scroll'
call plug#end()

" All key mappings are in this file
source $HOME/.config/nvim/keymap.vim

" Access the system clipboard
set clipboard=unnamed

" Set colors
set termguicolors
set background=dark
colorscheme nova

" Tab settings
set expandtab           " Insert spaces for tab
set tabstop=4           " Tabs are 4 spaces
set shiftwidth=4        " Indendation for < and > commands

" Display settings
set relativenumber      " Show (relative) line numbers
set number              " Show current line number
set showcmd             " Show partial commands in status line
set nowrap              " Don't wrap lines

" Better search
set ignorecase          " Search is case insensitive
set smartcase           " ...unless query has capital letters
set nohlsearch

" Live substitution
set inccommand=nosplit

" More natural splits
set splitbelow
set splitright

" Enable folding for XML files
let g:xml_syntax_folding=1
autocmd FileType xml setlocal foldmethod=syntax

" Turn on folding for python files
autocmd FileType python setlocal foldmethod=indent

" Enable Omni Completion
set omnifunc=syntaxcomplete#Complet

let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" deoplete
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" The Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Configure status line
let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'fugitive#head'
        \ },
      \ }

" Smooth scrolling
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>
