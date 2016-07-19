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
Bundle 'scrooloose/syntastic'

filetype plugin indent on " required!


" SWAP DIRECTORY
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"remapping leader
let mapleader=","

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

"dont complain when working on multiple files without saving all the time
set hidden

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

"annoying to not be able to see where you go
set scrolloff=3

"always replace in entire file
set gdefault

"highlighting while searching
set incsearch
set showmatch
set hlsearch
"shortcut for removing highlights
nnoremap <leader>c :noh<CR>

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
set tabstop=2
set softtabstop=2
"set noexpandtab
set expandtab
set shiftwidth=2

"for airline footer
set laststatus=2

"start of line is where whitespace ends
nnoremap 0 ^
nnoremap ^ 0

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

"for faster searching map space to /
nmap <space> /

"quick saving
nmap <leader>w :w!<cr>

"shortcut for trimming trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"quicker splits navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

map <leader>s :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"need default filetype for json to be json, not javascript
au BufRead,BufNewFile *.json set filetype=json

