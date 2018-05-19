My .vim

Clone this repository into `~/.vim`.

Uses Pathogen and git submodules to manage plugins.
See [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/).

Requires the_silver_searcher and uses [ag.vim](https://github.com/rking/ag.vim).

Uses ESLint for JS and React linting see [here](https://github.com/jaxbot/syntastic-react) for configuration.

Uses deoplete.vim for autocomplete and requires Python3 and Python Neovim
module see [here](https://github.com/Shougo/deoplete.nvim).

After installing Neovim navigate to ` ~/.config/nvim/init.vim` and add
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
To use existing .vimrc. 

Open new Neovim sessions using `nvr` to prevent nested terminals using [neovim-remote](https://github.com/mhinz/neovim-remote).
