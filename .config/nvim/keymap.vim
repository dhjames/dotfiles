let mapleader=" "

" Yank to end of line
nmap Y y$

" Ctrl-S to save
nmap <c-s> :update<cr>
imap <c-s> <esc>:update<cr>

" NERDTree
nmap <leader>ne :NERDTree<cr>

" CtrlP
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>o :CtrlPMRUFiles<cr>

" Edit init.vim
:nnoremap <leader>rc :vsplit $MYVIMRC<cr>

" Edit custom key mapping
:nnoremap <leader>km :vsplit $HOME/.config/nvim/keymap.vim<cr> 
