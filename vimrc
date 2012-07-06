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
" Function key maps                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" toggle NERDTree
nmap <F1> :NERDTreeToggle<CR>

" tab left
map <F2> gT

" tab right
map <F3> gt

" switch between NERDTree and the open file
map <F4> <C-w><C-w> 

" toggle line numbers
map  <F5> :set number!<CR> :set foldcolumn=0<CR>

" turn on spell checking
map <F8> :set spell<CR>

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
