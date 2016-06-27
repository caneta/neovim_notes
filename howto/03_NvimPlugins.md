# Neovim Plugin setup
If not already done, follow [basic configuration guide](../howto/02_NvimBasicConf.md) first.

## Other packages installation
This steps are needed to have JavaScript and SCSS linting features in Neovim.
[Tern](http://ternjs.net/) is used instead to have JavaScript documentation on the fly, trough [deopolete plugin]i(https://github.com/Shougo/deoplete.nvim).
If not followed, my configuration files will not find every tool they need causing warning at startup.
* Get [JSHint](http://jshint.com/) using [NVM](https://github.com/creationix/nvm) and [Node.js](https://nodejs.org/en/):

    ```
    git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
    nvm install ${NODE_VERSION} # For example NODE_VERSION=6.2.2
    npm install -g jshint tern
    ```
* Get [scss-lint](https://github.com/brigade/scss-lint) using [Ruby](https://www.ruby-lang.org/en/) (relative [PPAs](https://www.brightbox.com/docs/ruby/ubuntu/)) and [SASS](http://sass-lang.com/):

    ```
    sudo apt-add-repository [-E] ppa:brightbox/ruby-ng # -E flag if you are behind a proxy
    sudo apt-get update
    sudo apt-get install ruby2.3 ruby2.3-dev
    sudo su -c "gem install sass"
    sudo su -c "gem install scss_lint"
    ```

## Neovim plugins installation
* Install [Plug](https://github.com/junegunn/vim-plug) as plugin manager:

    ```
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```
* Install [Neovim python-client](https://github.com/neovim/python-client):

    ```
    sudo apt-get install python-dev python-pip python3-dev python3-pip
    pip3 install neovim
    ```

