call pathogen#incubate()
call pathogen#helptags()
syntax on
filetype plugin indent on

"never write temp files into directories
set backupdir=/Users/sharkins/tmp
set directory=/Users/sharkins/tmp
set nobackup
set nowritebackup

set background=dark
colorscheme solarized
highlight clear SignColumn

if has("gui_running")
  set go-=T
  set guifont=Monaco:h14
  set noballooneval
else
  set mouse=a
endif

"Nerdtree configurations
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.pyc$', 'CVS', '\~$']
let NERDTreeHijackNetrw=1
:let NERDTreeQuitOnOpen = 0

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

" Statusline helper
if has("eval")
function! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endfunction
endif

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{SL('fugitive#statusline')}%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P

