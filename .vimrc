set nocompatible                " choose no compatibility with legacy vi

"" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

"" Colorscheme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

"" Basics
set number
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Tweaks
xnoremap p pgvy                 " multiple paste
set mouse=a                     " enable mouse
au BufNewFile,BufRead *.json.jbuilder set ft=ruby " use ruby syntax for jbuilder

"" Open splits more naturally
set splitbelow
set splitright

"" Store swaps/backups in one global location ( '//' avoids name collisions)
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"" Easier navigation between buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" FZF
set rtp+=~/.fzf

" Open files in horizontal split
nnoremap <silent> <C-s> :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <C-x>  :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

"" When shift is held too long during save/quit command
:command WQ wq
:command Wq wq
:command W w
:command Q q
