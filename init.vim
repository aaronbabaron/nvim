set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

call plug#begin('~/.config/nvim/plugged')
Plug 'sickill/vim-monokai'
Plug 'dyng/ctrlsf.vim'
call plug#end()

syntax enable
colorscheme monokai

set grepprg='ack'
set mouse=""
set tabstop=2
set shiftwidth=2
set expandtab
set number

let g:ctrlsf_ignore_dir=['node_modules', 'bower_components', 'dist']
let g:ctrlsf_index=2
let g:ctrlsf_ackprg='ack'

let g:jsx_ext_required=0
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
let g:closetag_filenames='*.js,*.jsx,*.html'
let g:ctrlp_custom_ignore = {
  \ 'dir': '/node_modules/'
  \ }


map <C-n> :NERDTreeToggle<CR>
map <C-s> :CtrlSF 
map <C-x> :w<CR>:!node %<CR>
map <C-a> :w<CR>:!python3 %<CR>
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

