# Dotfiles
## Vim
1. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim):
    ```
    sudo apt-get install software-properties-common

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```
2. Use ~/.vimrc as config:

    ```
    mkdir -p ~/.config/nvim
    ln -s ~/.vimrc ~/.config/nvim/init.vim
    ```
3. Create folders for swap etc.: `mkdir -p ~/.vim/{backup,swap,undo}`
4. Install vim-plug:
    ```
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```
5. Install plugins: `:PlugInstall` (run in Neovim)
6. Install xclip, to be able to copy from Neovim to system clipboard: `apt-get install xclip`
7. Install [fzf](https://github.com/junegunn/fzf) for fuzzy search

### Credits
Basics, Whitespace and Searching sections are based on Mislav Marohnić's [Vim: revisited article](http://mislav.uniqpath.com/2011/12/vim-revisited/).
