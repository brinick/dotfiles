" Remap previous buffer to mean the last buffer I was in
nnoremap :bp :b#<CR>

" Change to previous buffer easily
nnoremap <C-Tab> :bp<CR>

" Edit/source this vimrc file
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>eb :e $HOME/.vim/vimrc/basic.vim<CR>
nnoremap <leader>es :e $HOME/.vim/vimrc/statusline.vim<CR>
nnoremap <leader>ep :e $HOME/.vim/vimrc/plugins.vim<CR>
nnoremap <leader>em :e $HOME/.vim/vimrc/mappings.vim<CR>
nnoremap <leader>ea :e $HOME/.vim/vimrc/appearance.vim<CR>
nnoremap <leader>s :so $MYVIMRC<CR>
"
" Always set the current file directory as the local current directory
autocmd BufEnter * silent! lcd %:p:h

" - Splits --------------------
" Easier navigation
nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>
nnoremap <silent> <A-Up> :wincmd k<CR>
nnoremap <silent> <A-Down> :wincmd j<CR>

"Faster resizing
nnoremap <C-w>> 30<C-w>>
nnoremap <C-w>< 30<C-w><

" Easy creation
nnoremap \| :vsplit<CR>
nnoremap - :split<CR>

" Close all superfluous windows
nnoremap <leader>m :windo lclose\|cclose\|pclose<CR>

" Open a terminal, yay
nnoremap <leader>t :vert terminal<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Toggle background with <leader>bg
map <leader>. :let &background = (&background == "dark"? "light" : "dark")<cr>

autocmd BufEnter *.md exec 'noremap <leader>o :!open -a macdown %:p<CR>'
