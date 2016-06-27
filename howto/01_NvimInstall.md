Obviusly my configuration reflect my needs, so feel free to change it.

install nvm
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
install node
nvm install 6.2.2
npm install jshint

## Neovim basic installation on Ubuntu Linux
* Neovim installation steps (partly taken from [here](https://github.com/neovim/neovim/wiki/Installing-Neovim)):
    ```
    sudo apt-get install software-properties-common
    sudo add-apt-repository [-E] ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```
* Open your terminal and open Neovim typing `nvim`

