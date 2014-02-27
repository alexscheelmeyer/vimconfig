"This is to turn off vi compatibility, not sure why but many people reccomend it
set nocp

" make sure to use utf-8
set encoding=utf-8
setglobal fileencoding=utf-8

"
"Vundle setup
"
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'

filetype plugin indent on " required!


" SWAP DIRECTORY
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"Unmap arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>


"Show line-numbers
set number

"Dont wrap those lines at right border please
set nowrap

"allows backspacing over extra stuff
set bs=indent,eol,start

"turn off blinking cursor in normal mode
set gcr=n:blinkon0

"hide the toolbar
set go-=T

"Need more space
set lines=40

"Monaco is a great coderfont
set guifont=Monaco:h13

"more pleasing to the eye with dark background
set background=dark
colorscheme birdsofparadise

"center on motions
nmap G Gzz
nmap { {zz
nmap } }zz

"Set tabs
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4

"for airline footer
set laststatus=2

"shortcuts to select tab directly
map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

