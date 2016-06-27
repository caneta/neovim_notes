# Neovim installation on Ubuntu Linux
## Foreword
Do you want to try [Neovim](https://neovim.io/) on [Ubuntu](http://www.ubuntu.com/desktop) or another OS from its family? Great!
This is a guide to set it up quickly and have a ready-to-play installation with a bunch of awesome plugins.
Here Neovim is supposed to be used in a terminal with [True Color](https://gist.github.com/XVilka/8346728) support: before starting with the guide, check to have one (i.e. gnome-terminal >= 3.12.3).
Obviusly my configuration reflect my needs, so feel free to change it.

install nvm
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
install node
nvm install 6.2.2
npm install jshint

## Neovim basic installation
* Neovim installation steps description (partly taken from [here](https://github.com/neovim/neovim/wiki/Installing-Neovim)):
** Install utility to manage repos
** Add [PPA repository](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable). If you're behind a proxy add the `-E` flag.
** Update package index
** Install neovim

* Neovim installation commands:
    ```
    sudo apt-get install software-properties-common
    sudo add-apt-repository [-E] ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```
* Open your terminal and open Neovim typing `nvim`


## Plugins
* Install [Neovim python-client](https://github.com/neovim/python-client) (needed by some plugin):
    ```
    sudo apt-get install python-dev python-pip python3-dev python3-pip
    pip3 install neovim
    ```

* Copy configuration files from this repo
* The configuration file for Neovim is **~/.config/nvim/init.vim**

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/80x15.png)](http://creativecommons.org/licenses/by-sa/4.0/)
