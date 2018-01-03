let mapleader=" "

" Yank to end of line
nnoremap Y y$

" Fix common typo when quitting
command! Q q

" Ctrl-S to save
nnoremap <c-s> :update<cr>
inoremap <c-s> <esc>:update<cr>

" NERDTree
nnoremap <leader>ne :NERDTree<cr>

" FZF
nnoremap <leader>f :FZF<cr>
nnoremap <leader>b :FzfBuffer<cr>

" Edit init.vim
nnoremap <leader>rc :vsplit $MYVIMRC<cr>

" Edit custom key mapping
nnoremap <leader>km :vsplit $HOME/.config/nvim/keymap.vim<cr> 

" Source current file
nnoremap <leader>so :source %<CR>

" Git shortcuts
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>

" Auto format
nnoremap <leader>af :Autoformat<cr>

" yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
