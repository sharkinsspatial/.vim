My .vim

Clone this repository into `~/.vim`.

<!-- Uses Pathogen and git submodules to manage plugins. -->
<!-- See [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/). -->

Requires the_silver_searcher and uses [ag.vim](https://github.com/rking/ag.vim).

Requires the following plugins

ag.vim \
LanguageClient-neovim \
ag.vim \
coc.nvim \
editorconfig-vim \
gist-vim \
nerdcommenter \
nerdtree \
typescript-vim \
vim-airline \
vim-colors-solarized \
vim-fugitive \
vim-python-pep8-indent \
vim-surround \
vim-tmux-navigator \
vim-unimpaired

After installing Neovim navigate to ` ~/.config/nvim/init.vim` and add
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
To use existing .vimrc. 

Open new Neovim sessions using `nvr` to prevent nested terminals using [neovim-remote](https://github.com/mhinz/neovim-remote).
