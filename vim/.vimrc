set modeline
"-----------------------------------------------------------
set encoding=utf_8

set title
syntax on
imap <c-]> <esc>
nmap <c-e> :NERDTreeToggle<CR>
nmap <c-f> :TagbarToggle<CR>

"-----------------
" Indent
"-----------------
set tabstop=2
set softtabstop=0
set shiftwidth=2
set smartindent
set smarttab
set showmatch


" Tab -> Space
set expandtab


"-------
" Other
"-------
set clipboard=unnamed
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

" md as markdown, instead of modula2
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" Color
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

set hlsearch

"macvim
if has("gui_running")
    colorscheme desert
endif

set fileformats=unix,mac

set ambiwidth=double

"----------------------

set laststatus=2

set display+=lastline

set number
set ruler

source ~/.vimrc.profile

" let g:syntastic_cpp_checkers = ['gcc']
" let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++14'

set viminfo='100,\"1000
