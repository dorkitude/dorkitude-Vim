
"TODO: comment explaing this, anyone?
filetype off
call pathogen#runtime_append_all_bundles() 

"FIXME: why do I have both of these lines? must investigate them:
syntax on
syntax enable

"TODO: comment explaining this, anyone?
filetype plugin indent on

"------------------------------------------------------------------
"Solarized Colorscheme Config
"------------------------------------------------------------------
"set background=light
set background=dark
colorscheme solarized

"TODO: don't know what this is actually:
au BufNewFile,BufRead *.apk set filetype=apk

"set tabs to 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4

"ruby and yaml files are indented by two
autocmd FileType ruby,rdoc,cucumber,yaml set softtabstop=2 tabstop=2 shiftwidth=2

"automatically indent
set smartindent
set cindent

"show line numbers on the left
set number

"case insensitive search
set ignorecase
set smartcase

"search the whole build tree for ctags
set tags=tags;/


"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
":colorscheme evening

"the so-called 'mandatory option' -- TODO: research and add better comment 
:set hidden

"the sequence `\d` will delete the current buffer without killing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

"NERDTreeIgnore
let NERDTreeIgnore=[]
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.pyc$']

"setup NERDtree mapping
map <F2> :NERDTreeToggle<CR>

"add a shortcut to reindex CommandT's file listing
map <leader>f :CommandTFlush<CR>

"we are in the future! no need to be compatible with Vi
set nocompatible

"allow for c,w to change part of a camel-cased word
"source $HOME/Dropbox/dev/camelcasemotion.vim

"make it so mouse and keyboard don't exit select mode."
"this makes it so we can select with the mouse and then act on that block."
set selectmode=""


" this gives me convenient key mappings for window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" a quick way to bring up Ack 
noremap <silent> ,a :Ack --follow 


" create a shortcut to get out of insert mode by typing 'jj'
inoremap jj <ESC>


"from here down is the default _vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin



    

" turn off the annoying top bar in MacVim
if has("gui_running")
 set guioptions=egmrt
endif

"give me that nice little gutter so i don't make stuff too wide
"set formatoptions=qrn1
"set colorcolumn=80

" this makes MacVim share your Mac keyboard. I don't know the non-MacVim
" implications.
set clipboard=unnamed



" smartcase makes it so:
"    /copyright      " Case insensitive
"    /Copyright      " Case sensitive
"    /copyright\C    " Case sensitive
"    /Copyright\c    " Case insensitive
set smartcase


"This allows you to hit Escape to unset the 'last search pattern' register 
nnoremap <esc> :noh<return><esc>

" EasyGrep config
let g:EasyGrepMode=2 "search only files of current type
let g:EasyGrepRecursive=1 "default to recursive style search
let g:EasyGrepReplaceWindowMode=2 "autowrite the files changed by :Replace

