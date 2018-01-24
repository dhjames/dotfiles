let mapleader=" "

" Yank to end of line
nnoremap Y y$

" Fix common typo when quitting
command! Q q

" Ctrl-S to save
nnoremap <c-s> :update<cr>
inoremap <c-s> <esc>:update<cr>

" NERDTree
nnoremap <leader>ne :NERDTreeToggle<cr>

" FZF shortcuts
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>

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

" Easily move between terminal windows
tmap <C-W>h <C-\><C-N><C-W>h
tmap <C-W><C-H> <C-\><C-N><C-W><C-H>
tmap <C-W>j <C-\><C-N><C-W>j
tmap <C-W><C-J> <C-\><C-N><C-W><C-J>
tmap <C-W>k <C-\><C-N><C-W>k
tmap <C-W><C-K> <C-\><C-N><C-W><C-K>
tmap <C-W>l <C-\><C-N><C-W>l
tmap <C-W><C-L> <C-\><C-N><C-W><C-L>
