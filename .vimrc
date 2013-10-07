"" Set path to ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

set number
syntax enable

colorscheme railscasts

"" Basics
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

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

"" Multiple paste
xnoremap p pgvy

"" When shift is held too long during save/quit command
:command WQ wq
:command Wq wq
:command W w
:command Q q
