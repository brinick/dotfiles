" ------------------------------------------------------------
" --- appearance ---------------------------------------------
" ------------------------------------------------------------
set background=light
set termguicolors

if has("gui_running")
    " Remove menu bar
    set guioptions-=m

    " Remove toolbar
    set guioptions-=T

    " actually just dump all
    set guioptions=

    "set guifont=Source\ Code\ Pro\ Medium:h16
    set macligatures
    " set guifont=Iosevka:h12
    set guifont=Fira\ Code:h14

    set linespace=0

endif

colorscheme plain

if strftime('%H') > 17
    set background=dark
elseif strftime('%H') > 6 
    set background=light
else
    set background=dark
endif


" Change the unused line ~ sign color
hi NonText guifg=bg cterm=none

" turn off the signcolumn
set scl=yes

