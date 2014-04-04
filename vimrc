"### Base ###

set number
set ruler
set nocompatible

" search
set incsearch
set hlsearch
set showmatch

" white characters
set list
set listchars=tab:→\ ,eol:¶
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
autocmd BufRead,BufNew * match JpSpace /　/

" indent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

autocmd FileType cpp setlocal tabstop=4
autocmd FileType cpp setlocal shiftwidth=4
autocmd FileType cpp setlocal softtabstop=4
autocmd FileType makefile setlocal noexpandtab

" disable cusor key
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
 
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" keep indent of blank line
nnoremap o oX<C-h>
nnoremap O OX<C-h>
inoremap <CR> <CR>X<C-h>



"### NeoBundle ###

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'tpope/vim-capslock'

filetype plugin indent on
filetype indent on
syntax on



"### NeoComplete.vim ###

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"



"### Capslock.vim ###

imap <C-p> <C-O><Plug>CapsLockToggle
