call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set vb
set nocompatible
set showmatch
set ruler
set number
set nowrap
set hlsearch
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set clipboard=unnamed
set splitbelow
set splitright
set textwidth=80

"never write temp files into directories
set noswapfile
set nobackup
set nowritebackup

"Colorscheme settings
set background=dark
colorscheme solarized

if has("gui_running")
  set go-=T
  set guifont=Monaco\ for\ Powerline:h16
  set noballooneval
  set mouse=a
endif

"Nerdtree configurations
"nnoremap <leader>d :NERDTreeToggle %<cr>
"Fixes neovim regression.
highlight NERDTreeFile ctermfg=251
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.pyc$', 'CVS', '\~$']
let NERDTreeQuitOnOpen = 0
" Open NERDTree in the directory of the current file (or /home if no file is open)
nmap <leader>d :call NERDTreeToggleInCurDir()<cr>
function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    exe ":NERDTreeFind"
  endif
endfunction

"Autocomplete settings
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"let g:neocomplcache_enable_at_startup = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['cpp']
let g:syntastic_check_on_open=1

let g:syntastic_javascript_eslint_exec = 'yarn'
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_json_checkers=['jsonlint']

nnoremap <leader>e :Error<cr>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-']

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_tsc_fname = ''
let g:syntastic_typescript_checkers = ['tsuquyomi','tslint']

"Sets json filetype explicitly so as not to interfere with jsxhint
au BufRead,BufNewFile *.json set filetype=json


"Split navigation keys
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>
nmap <c-j> <c-w>j<c-w>
nmap <c-k> <c-w>k<c-w>

"Powerline settings
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
let g:airline_powerline_fonts = 1

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Json formatter
com! FormatJSON %!python -m json.tool

"Xml formatter
com! FormatXML %!xmllint --format %

" search for visually hightlighted text
vnoremap <c-f> y<ESC>/<c-r>"<CR>

"Fix ag.vim issue opening first search
ca Ag Ag!

"Disable folding except for vimdiff
set nofoldenable

if has('nvim')
  "Remap Neovim return to Normal mode.
  :tnoremap <ESC> <C-\><C-n>

  "Open terminal split on start.
  au VimEnter * vsplit | set nonumber | term

  "Prevent nested nvim sessions with neovim-remote.
  "let $VISUAL = 'nvr -cc split --remote-wait'
  command Term split | set nonumber | term

  "Show cursor location in Term
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=235 ctermbg=242 guifg=#002b36 guibg=#586e75 guisp=NONE cterm=NONE gui=NONE
endif

