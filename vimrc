" Using vim-plug to manage bundles
" Download plug.vim and put in .vim/autoload
" Then call PlugInstall or PlugUpdate from vim

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'embear/vim-foldsearch'
Plug 'jremmen/vim-ripgrep'
call plug#end()

filetype indent plugin on

" swap ; and :
nnoremap ; :
ca qa1 qa!

" Tab settings
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" completion
set wildmenu              " enable C-n and C-p to scroll through matches
set wildmode=list:longest " make completition like Bash
set wildignore=*.o,*~     " ignore when tab-completing

" Tags
set tags=./tags,tags,../tags,../../tags

" Search
set ignorecase smartcase hlsearch

"
" Line wrapping options
" Tip: use gj, gk, g0, g$ to move within wrapped lines
"
set showbreak=>
set wrap          " word wrap visually on screen only (don't change text)
set linebreak     " only wrap at certain characters

" Tell vim to remember certain things when we exit
"  '10 : marks will be remembered for up to 10 previously edited files
"  \"100 : will save up to 100 lines for each register
"  :20 : up to 20 lines of command-line history will be remembered
"  % : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='50,:100,/100,@100,h,%,n~/.vim/viminfo

" Restore cursor position if possible
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
