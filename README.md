My .vim

Clone this repository into `~/.vim`.

Requires `the_silver_searcher` and uses [ag.vim](https://github.com/rking/ag.vim).

Requires the following plugins

- ag.vim
- coc.nvim
- nerdcommenter
- nerdtree
- vim-airline
- vim-aireline-themes
- vim-colors-solarized
- vim-fugitive
- vim-python-pep8-indent
- vim-tmux-navigator

After installing Neovim navigate to ` ~/.config/nvim/init.vim` and add
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
To use existing .vimrc. 

The `.vimrc` has configuration to automatically install COC Extensions on the system if they are not installed as described in this [issue](https://github.com/neoclide/coc.nvim/issues/560).
