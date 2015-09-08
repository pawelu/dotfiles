# Dotfiles
## Vim
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Symlink existing .vimrc: `$ ln -nfs ~/.vimrc ~/.nvimrc`
3. Create aliases in .zshrc/.bashrc:
    ```
    alias v='nvim'
    alias vi='nvim'
    alias vim='nvim'
    ```
4. Install xclip, to be able to copy from Neovim to system clipboard: `apt-get install xclip`

### Credits
Basics, Whitespace and Searching sections are based on Mislav Marohnić's [Vim: revisited article](http://mislav.uniqpath.com/2011/12/vim-revisited/).
