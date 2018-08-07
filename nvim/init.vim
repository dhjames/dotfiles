" Add plugins
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'craigemery/vim-autotag'
Plug 'janko-m/vim-test'

Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'terryma/vim-smooth-scroll'
Plug 'trevordmiller/nova-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'OmniSharp/omnisharp-vim'
Plug 'stevearc/vim-arduino'
Plug 'pangloss/vim-javascript'

Plug 'Chiel92/vim-autoformat'
Plug 'google/yapf'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'chrisbra/csv.vim'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
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
set cursorline          " Highlight current line

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
autocmd Syntax python setlocal foldmethod=indent
autocmd Syntax python normal zR

" Python support
let g:python_host_prog = $HOME . '/virtualenvs/py2neovim/bin/python'
let g:python3_host_prog = $HOME . '/virtualenvs/py3neovim/bin/python'

" Enable Omni Completion
set omnifunc=syntaxcomplete#Complet

" deoplete
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" The Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Text execution
let test#strategy = "asyncrun"

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

let vim_markdown_preview_github=1
