let g:mapleader = ","
 inoremap jj <esc>

 " Fix Delete (backspace) on Mac OS X
 set backspace=2

 " Enable syntax highlighting
 syntax on

 " Indentation
 set autoindent
 filetype plugin indent on

 set clipboard=unnamed

 if has("mouse")
    set mouse=a
 endif

 " Bash-style tab completion
 set wildmode=longest,list
 set wildmenu


 " Fix trailing selection on visual copy/cut
 set selection=exclusive

 " Keep selection on visual yank
 " vnoremap <silent> y ygv

 nnoremap <silent> p "+p


 " Disable comment continuation on paste
 " autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

 " Show line numbers
 set number
 set relativenumber

 " Show statusline
 set laststatus=2

 " Case-insensitive search
 set ignorecase

 " Highlight search results
 set hlsearch

 " Default to soft tabs, 2 spaces
 set expandtab
 set shiftwidth=4
 set softtabstop=4
 set tabstop=4

 " Tabbing exceptions
 autocmd FileType mkd setlocal sw=4 sts=0 ts=4 expandtab
 autocmd FileType php setlocal sw=4 sts=0 ts=4 expandtab
 autocmd FileType javascript setlocal sw=4 sts=0 ts=4 expandtab
 autocmd FileType typescript setlocal sw=4 sts=0 ts=4 expandtab

 " Color config
 set background=dark

 " Default to Unix LF line endings
 set ffs=unix

 " Folding
 set foldmethod=syntax
 set foldcolumn=1
 set foldlevelstart=20
