"set tabs to 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4

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
:colorscheme koehler


"the so-called 'mandatory option'
:set hidden


let NERDTreeIgnore = ['\.pyc$', '\~$']
map <F2> :NERDTreeToggle<CR>


"open the window larger than normal (100 wide by 40 tall)
"win 100 40

set nocompatible
"allow for c,w to change part of a camel-cased word
"source $HOME/Dropbox/dev/camelcasemotion.vim

"make it so mouse and keyboard don't exit select mode."
"this makes it so we can select with the mouse and then act on that block."
set selectmode=""


noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>

"from here down is the default _vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()


