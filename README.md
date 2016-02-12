# Dotfiles
## Vim
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Link vim configuration:

    ```
    mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
    ln -s ~/.vim $XDG_CONFIG_HOME/nvim
    ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
    ```
3. Create folders for swap etc.: `mkdir -p ~/.vim/backup/ ~/.vim/swap ~/.vim/undo`
4. Install Vundle plugins: `:PluginInstall`
5. Install xclip, to be able to copy from Neovim to system clipboard: `apt-get install xclip`
6. Install [fzf](https://github.com/junegunn/fzf) for fuzzy search

### Credits
Basics, Whitespace and Searching sections are based on Mislav Marohnić's [Vim: revisited article](http://mislav.uniqpath.com/2011/12/vim-revisited/).
