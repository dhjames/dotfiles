" Add plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'craigemery/vim-autotag'
call plug#end()

" All key mappings are in this file
source $HOME/.config/nvim/keymap.vim

" Makes the cursor a pipe in insert-mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Access the system clipboard
set clipboard=unnamed

" Set colors
set termguicolors
colorscheme gruvbox
set background=dark

" Tab settings
set expandtab           " Insert spaces for tab
set tabstop=4           " Tabs are 4 spaces
set shiftwidth=4        " Indendation for < and > commands

" Display settings
set number              " Show line numbers
set showcmd             " Show partial commands in status line
set nowrap              " Don't wrap lines

" Better search
set ignorecase          " Search is case insensitive
set smartcase           " ...unless query has capital letters

" More natural splits
set splitbelow
set splitright

" Enable Omni Completion
set omnifunc=syntaxcomplete#Complet

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" deoplete
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" yapf
autocmd FileType python nnoremap <leader>y :0,$!yapf<cr>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
