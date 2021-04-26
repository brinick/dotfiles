set foldcolumn=5  " Left-margin indent amount (bigger the number, the more indented)
set laststatus=2  " Show the status bar? (2=always, 0=never)

set statusline=
set statusline+=%t       " filename
set statusline+=\  
set statusline+=%{ModifiedFlag()}       " modified flag
set statusline+=%=       " align right from here on
set statusline+=%l:%L,%c

set fillchars=stl:-,stlnc:-,vert:\¦
" hi StatusLine guifg=#888888 guibg=none

" hi User1 guifg=guibg 
" hi User2 guifg=#888888 guibg=#282c34
" hi User3 guifg=#888888 guibg=#282c34

function! ModifiedFlag()
    return &modified? '[+]': ''
endfunction

function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return '-'
endfunction

function! AbbrevMode()
    let s:mode_map = {
        \ 'n'      : '',
        \ 'no'     : 'N·Operator Pending',
        \ 'v'      : 'V',
        \ 'V'      : 'V',
        \ '\<C-V>' : 'V·Block',
        \ 's'      : 'Select',
        \ 'S'      : 'S·Line',
        \ '\<C-S>' : 'S·Block',
        \ 'i'      : 'I',
        \ 'R'      : 'R',
        \ 'Rv'     : 'V·Replace',
        \ 'c'      : 'CMD',
        \ 'cv'     : 'Vim Ex',
        \ 'ce'     : 'EX',
        \ 'r'      : 'Prompt',
        \ 'rm'     : 'More',
        \ 'r?'     : 'Confirm',
        \ '!'      : 'SHELL',
        \ 't'      : 'TERM'
        \}
    return s:mode_map[mode()]
endfunction

