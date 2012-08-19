"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dependencies                                                                " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim pathogen
" https://github.com/tpope/vim-pathogen

" NERDTree
" https://github.com/scrooloose/nerdtree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General viewing                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make it prettier
set background=dark

" pathogen
call pathogen#infect()

" set the status line to display some useful info
set statusline=%F%m%r%h%w\ [POS=%l,%v]\ [%p%%]\ [LEN=%L]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [HEX=\%02.2B]

" makes sure the status line displays automatically
set laststatus=2

" set the text width to be 80 characters
set textwidth=80

" set the bar to be at one character greater than the text width (81)
" set cc=+1

" turn on syntax highlighting
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps                                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turning off the <F1> help
:nmap <F1> <nop>

" toggle NERDTree
nmap <F1> :NERDTreeToggle<CR>

" tab left
map <F2> gT

" tab right
map <F3> gt

" switch between NERDTree and the open file
map <F4> <C-w><C-w> 

" toggle line numbers
map <F5> :set number!<CR> :set foldcolumn=0<CR>

" word wrap
map <F6> gwap

" turn on spell checking
map <F7> :set spell<CR>

" write and make
map <F8> :w<CR>:!make<CR>

" jump back one word
map <F9> b

" jump forward one wordd
map <F10> w

" jump to the beginning of the line
map <F11> 0

" jump to the end of the line
map <F12> $

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation and spacing                                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" smartindent inserts one extra level of indentation when appropriate
set smartindent

" autoindent copies the indentation from the previous line,
set autoindent

" tabstop changes the width of the tab character
set tabstop=4

" expandtab inserts spaces whenever the tab key is pressed
set expandtab

" shiftwidth changes the number of space characters inserted for indentation
set shiftwidth=4

" softtabstop makes the backspace key treat the four spaces like a tab
set softtabstop=4
