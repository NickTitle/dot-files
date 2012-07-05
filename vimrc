" set the status line to display some useful info and set laststatus=2 so it always displays.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2                                                                 
                                                                                 
set textwidth=80                                                                 
set cc=+1 

syntax on

nmap <F1> :NERDTreeToggle<CR>

map <F2> gT

map <F3> gt

map <F4> <C-w><C-w> 

map  <F5> :set number!<CR> :set foldcolumn=0<CR>                                
                                                                                 
map <F8> :set spell<CR> 

map <F11> 0

map <F12> $

set cindent
set smartindent
set autoindent
set tabstop=4
