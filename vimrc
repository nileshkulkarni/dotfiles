set number
set tabstop=4

set modeline
set ls=2

set expandtab 
"insert spaces instead of tab character

set softtabstop=4
"when deleting a tab(containing spaces) delete all four spaces in one go
"when pressing backspace
set shiftwidth=4 
"use < and > to indent/unindent

set autoindent  "it means on pressing return, indent of next line
                "matches that of the previous

"execute pathogen#infect()

syntax on
filetype plugin indent on

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Map jk to ESC in  the insert mode
:imap jk <ESC>
:imap JK <ESC>

" Moving up and down next visible line (useful if a line spans several lines)
:nmap j gj
:nmap k gk

" use , (comma) to go to command line mode i.e :
" dont use m as it is used for markings
" use ; and <C-L>(default , is overridden) to go to next and previous repeat latest f,t,F,or T.
" NOTE USE NOREMAP TO PREVENT CIRCULAR MAPPING
:nnoremap , :
:nnoremap <C-L> ,

" set to ignore .pyc files(useful when opening other file to edit)
set wildignore=*.pyc

" set max line length to 79 chars. Extra will be shown in ErrorMsg color
:nmap <unique> <F10> :match ErrorMsg /\%>79v.\+/<CR>
:nmap <unique> <F9> :match<CR>

" use Ctrl-j and Ctrl-k to cycle through buffers (next and previous respec.)
:nmap <unique> <C-J> <ESC>:bn<CR>
:nmap <unique> <C-K> <ESC>:bp<CR>

" use <F2> to toggle paste and nopaste mode for peaceful copy paste
set showmode  "shows the insert mode[-- INSERT(paste) -- ]
set pastetoggle=<F2>

