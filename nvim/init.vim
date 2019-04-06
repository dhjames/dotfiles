" Install vim-plug if missing
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" Python setting for PEP8
autocmd BufNewFile,BufRead *.py set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ autoindent
    \ fileformat=unix

autocmd BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set shiftwidth=2
    \ set softtabstop=-1    "uses shifwidth

" Folding
let g:xml_syntax_folding=1
autocmd FileType xml setlocal foldmethod=syntax
autocmd FileType xml normal zR

autocmd Syntax python setlocal foldmethod=indent
autocmd Syntax python normal zR

" Python support
let g:python3_host_prog = $HOME . '/virtualenvs/py3neovim/bin/python'

" OmniSharp
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
        \             [ 'gitbranch', 'readonly', 'filename', 'kitestatus', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'fugitive#head',
        \   'kitestatus': 'kite#statusline'
        \ },
      \ }

" Smooth scrolling
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>

let vim_markdown_preview_github=1
