"===============================================================================
" => Basic behavior
"===============================================================================
set nocompatible                    " disable vi compatibility
set number                          " show line numbers
highlight LineNr ctermfg=DarkGrey   " change color of line numbers
set wrap                            " wrap lines
set viminfo=""                      " disable .viminfo file
set encoding=utf8                   " set encoding to UTF-8
set lazyredraw                      " redraw screen only when need to
set showmatch                       " highlight matching brackets
set ruler                           " show line and column number of the cursor
set wildmenu                        " enable wild menu
set wildmode=list:longest,full      " list matches, then longest, then full

"===============================================================================
" => Key bindings
"===============================================================================
nmap j gj                           " move vertically by visual line
nmap k gk                           " move vertically by visual line

"===============================================================================
" => Vim UI
"===============================================================================
syntax enable                       " enable syntax coloring
filetype plugin indent  on

"===============================================================================
" => TAB settings
"===============================================================================
set tabstop=4                       " number of spacer per <TAB>
set expandtab                       " convert <TAB> key-presses to spaces
set shiftwidth=4                    " set a <TAB> key-press equal to 4 spaces
set autoindent                      " copy indent from current line when statrting a new line
set smartindent                     " better autoindent

"===============================================================================
" => Search settings
"===============================================================================
set incsearch                       " search as characters are entered
set hlsearch                        " highlight search matches
nnoremap <leader><space> :nohlsearch<CR><CR> " turn off highlighting

"===============================================================================
" => Miscellaneous settings
"===============================================================================
set background=dark                 " configure Vim to use brighter colors
set autoread                        " autoread the file in Vim if it has been changed outside of Vim

"===============================================================================
" => Statusline settings
"===============================================================================

let g:currentmode={
    \ 'n' : 'NORMAL ',
    \ 'v' : 'VISUAL ',
    \ 'i' : 'INSERT '
    \}

set laststatus=2
set statusline+=%#StatusLineNC#
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%#SignColumn#
set statusline+=\ %f
set statusline+=\ %R
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %l:%c
set statusline+=\ 
