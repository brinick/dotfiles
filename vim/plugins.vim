
" ------------------------------------------------------------
" --- plugins ------------------------------------------------
" ------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'govim/govim'

Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree' " file explorer

" --- Snippets ----------
"Plug 'SirVer/ultisnips'    " Snippets engine
"Plug 'honza/vim-snippets'  " Snippets for various langs
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

" --- colorschemes ------
Plug 'jarrodctaylor/spartan'
Plug 'nightsense/stellarized'
Plug 'chriskempson/base16-vim'
Plug 'andreypopp/vim-colors-plain'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'


" --- Language -------
" Plug 'rhysd/vim-crystal'
Plug 'fatih/vim-go'
Plug 'hdima/python-syntax'
Plug 'klen/python-mode'


Plug 'itchyny/vim-gitbranch'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'            " asynchronous linter
Plug 'qpkorr/vim-bufkill'  " bd no longer kills the window split
Plug 'jremmen/vim-ripgrep' " fast grepping

call plug#end()

"Turn off rope mode
let g:pymode_rope = 0
 
" --- vim-go
let g:go_autodetect_gopath = 0
let $GOPATH="/Users/brinick/go"
let $GOPATH_ME="/Users/brinick/go/src/github.com/brinick"
let $WORK="/Users/brinick/work/src"

" --- fzf
nnoremap <leader><leader> :Files $WORK<cr>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
\ 'header': ['fg', 'Comment'] }

" --- ripgrep
nnoremap <leader>go :Rg --type go 
nnoremap <leader>py :Rg --type py 
nnoremap <leader>c :Rg --type cpp   

" --- nerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
