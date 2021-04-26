
set nocompatible
set encoding=utf-8
let mapleader=","

if has('python3')
  silent! python3 1
endif

" ------------------------------------------------------------
" --- init -----------------------------
" ------------------------------------------------------------
filetype off
syntax on
filetype on
filetype plugin indent on

" ------------------------------------------------------------
" --- basic settings -----------------------------------------
" ------------------------------------------------------------
"  set relativenumber            " line numbers relative to current line
"set numberwidth=10             " using only 1 column (and 1 space) while possible"
set sidescroll=40
set title
set wildmenu
set wildmode=full
set confirm                   " confirm exit buffer if not saved
set autochdir                 " curr dir = dir of current buffer
set hidden                    " hide buffers when not displayed
set mouse=a
set listchars=eol:$,tab:>-,trail:.
set noshowmode " get rid of the default -- INSERT -- text as we are using lightline
" ------------------------------------------------------------
" --- stop annoyances ----------------------------------------
" ------------------------------------------------------------
set noerrorbells
set vb t_vb=
set shortmess=atI    " stifle certain annoying interrupt prompts"

" ------------------------------------------------------------
" --- ignore these files when completing ---------------------
" ------------------------------------------------------------
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" ------------------------------------------------------------
" --- moving around and editing ------------------------------
" ------------------------------------------------------------
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set wrap                    " do wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on

set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " and an indent level is 4 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.

" Local override for C++ files
autocmd FileType cpp setlocal ts=2 sw=2 sts=2

set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

cabbrev h vert h

nnoremap Y y$               " make Y consistent with C and D

inoremap jk <esc>
"
" Do not outdent hashes
inoremap # #
inoremap # X<C-H>#

" Life on the edge - no backups/swap files
set nobackup
set nowritebackup
set noswapfile

" More natural split openings - bottom and right
set splitbelow
set splitright

" ------------------------------------------------------------
" --- reading/writing ----------------------------------------
" ------------------------------------------------------------
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

" ------------------------------------------------------------
" ---  searching and patterns --------------------------------
" ------------------------------------------------------------
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex"
