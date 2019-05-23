" Install vim-plug if missing 
" {{{
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"}}}

let mapleader=" "

" Plugin Section {{{
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'mileszs/ack.vim'
" The Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" ignore cache files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']


Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'

Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
" Configure status line
let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'fugitive#head',
        \ },
      \ }

" Autocomplete
Plug 'ncm2/ncm2'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
 " suppress the annoying 'match x of y', 'The only match' and 'Pattern not 
 " found' messages
set shortmess+=c
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'davidhalter/jedi-vim'
" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

Plug 'SirVer/ultisnips'
" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'

Plug 'OmniSharp/omnisharp-vim'
"set omnifunc=syntaxcomplete#Complet
Plug 'stevearc/vim-arduino'
Plug 'pangloss/vim-javascript'
Plug 'chrisbra/csv.vim'

Plug 'Chiel92/vim-autoformat'
Plug 'google/yapf'
Plug 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1

" Git
Plug 'tpope/vim-fugitive'

" Testing
Plug 'janko-m/vim-test'
nnoremap <leader>tf :TestFile<cr>
nnoremap <leader>tl :TestLast<cr>

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'

" Smooth scrolling
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>

" Colors
"Plug 'keith/parsec.vim'
"Plug 'trevordmiller/nova-vim'
"Plug 'zanglg/nova.vim'
"Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()
"}}}

" All key mappings are in this file
source $HOME/.config/nvim/keymap.vim

" General Settings {{{

" Allow unsaved buffers to be hidden
set hidden

" Access the system clipboard
set clipboard=unnamed

" Set colors
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" let ayucolor="mirage"
" colorscheme ayu
colorscheme palenight

" General tab settings
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
set nohlsearch          " Do not highlight search results

" Live substitution
set inccommand=nosplit

" More natural splits
set splitbelow
set splitright

" This doesn't seem like a good idea
set modelines=0

" Python support
let g:python3_host_prog = $HOME . '/virtualenvs/py3neovim/bin/python'

" Python setting for PEP8
autocmd BufNewFile,BufRead *.py set
    \ tabstop=4
    \ shiftwidth=4
    \ softtabstop=-1
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

" Python settings
autocmd Syntax python setlocal foldmethod=indent
autocmd Syntax python normal zR

" Folding in vimrc
autocmd FileType vim setlocal foldmethod=marker
" }}}
