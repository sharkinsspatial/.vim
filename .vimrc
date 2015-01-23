call pathogen#incubate()
call pathogen#helptags()
syntax on
filetype plugin indent on

set t_Co=256
set vb
set nocompatible
set showmatch
set ruler
set number
set nowrap
set hlsearch
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set clipboard=unnamed
set splitbelow
set splitright

"never write temp files into directories
set backupdir=/Users/sharkins/tmp
set directory=/Users/sharkins/tmp
set nobackup
set nowritebackup

"Colorscheme settings
set background=dark
colorscheme solarized

if has("gui_running")
  set go-=T
  set guifont=Monaco\ for\ Powerline:h14
  set noballooneval
  set mouse=a
else
    colorscheme default
endif

"Nerdtree configurations
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.pyc$', 'CVS', '\~$']
let NERDTreeHijackNetrw=1
let NERDTreeQuitOnOpen = 0

"Autocomplete settings
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"Syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['cpp']
let g:syntastic_check_on_open=1
nnoremap <leader>e :Error<cr>

"Split navigation keys
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>
nmap <c-j> <c-w>j<c-w>
nmap <c-k> <c-w>k<c-w>

"Powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

"Tagbar
nmap <F8> :TagbarToggle<CR>
com! FormatJSON %!python -m json.tool

"Pencil writing plugin
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
