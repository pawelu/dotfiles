"" Vundle
set nocompatible                " choose no compatibility with legacy vi
filetype off                    " it's changed after Vundle plugins section end
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'kchmck/vim-coffee-script'
Bundle 'ntpeters/vim-better-whitespace'

call vundle#end()
filetype plugin indent on       " load file type plugins + indentation

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

"" easier navigation between buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" When shift is held too long during save/quit command
:command WQ wq
:command Wq wq
:command W w
:command Q q
