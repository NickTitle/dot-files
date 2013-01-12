"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dependencies                                                                " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim pathogen
" https://github.com/tpope/vim-pathogen

" NERDTree
" https://github.com/scrooloose/nerdtree

" exuberant ctags
" http://ctags.sourceforge.net/

" cscope
" sudo port install cscope
" http://cscope.sourceforge.net/ (project web page)
" http://cscope.sourceforge.net/cscope_maps.vim (add to ~/.vim/bundle/)
" vim tutorial: http://cscope.sourceforge.net/cscope_vim_tutorial.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General viewing                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fix backspace
set backspace=start,eol,indent

" make it prettier
set background=dark

" pathogen
call pathogen#infect()

" set the status line to display some useful info
set statusline=%F%m%r%h%w\ [POS=%l,%v]\ [%p%%]\ [LEN=%L]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [HEX=\%02.2B]

" makes sure the status line displays automatically
set laststatus=2

" set the text width to be 80 characters
" set textwidth=80

" set the bar to be at one character greater than the text width (81)
" set cc=+1

" turn on syntax highlighting
syntax on

" set terminal title to file name
set title

" set colorscheme
colorscheme evening

" fold based on indent
set foldmethod=indent

" deepest fold is 10 levels
set foldnestmax=10

" dont fold by default
set nofoldenable

" set the foldlevel
" set foldlevel=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps                                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turning off the <F1> help
nmap <F1> <nop>

" toggle NERDTree
nmap <F1> :NERDTreeToggle<CR>

" switch between NERDTree and the open file
map <F2> <C-w><C-w> 

" tab left
map <F3> gT

" tab right
map <F4> gt

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

" jump back to declaration
map <c-O> <c-t>

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
