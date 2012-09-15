let g:xml_syntax_folding = 1
let xterm16_colormap = 'soft'
let xterm16_brightness	= 'high'

set foldmethod=syntax
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:'\ ,trail:',precedes:<,extends:>
set autowrite
set hlsearch
set incsearch
set showmatch
set sessionoptions=blank,buffers,curdir,help,options,tabpages,winsize
set diffopt+=vertical
set modeline
if version >= 703
    set relativenumber
endif

syntax on
filetype plugin indent on
color xterm16

au FileType scheme set autoindent expandtab softtabstop=2
au FileType scheme set lispwords-=if
au FileType scheme set lispwords+=syntax-rules
au FileType scheme set lispwords+=define-macro
au FileType scheme syn keyword schemeSyntax define-macro
au FileType scheme syn keyword schemeFunc pretty-print pp

au FileType python set foldmethod=indent
au FileType python nnoremap <space> za

au BufNewFile,BufRead *.lp set filetype=prolog
au BufNewFile,BufRead *.mly set filetype=yacc

au BufNewFile,BufRead *.cqa set filetype=java
au BufNewFile,BufRead *.cql set filetype=scheme

au FileType xml set sw=2
au FileType xml set ts=2
