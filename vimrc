 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 Bundle 'gmarik/vundle'

 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'scrooloose/syntastic'
 Bundle 'scrooloose/nerdtree'
 Bundle 'ervandew/supertab'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'pangloss/vim-javascript'
 Bundle 'myhere/vim-nodejs-complete'
 Bundle 'ZeusTheTrueGod/vim-format-js'
 Bundle 'jakar/vim-json'
 Bundle 'godlygeek/tabular'
 Bundle 'goatslacker/mango.vim'

 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'LineJuggler'

 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'

 filetype plugin indent on     " required!
 filetype plugin on

 set nobackup
 set noswapfile

 set encoding=utf-8
 set hidden
 set number

 set background=dark
 syntax on
 color mango

 map <C-j> :%!python -mjson.tool<CR>

 map <C-n> :NERDTreeToggle<CR>

 map <C-b> :FufBuffer<CR>

 "set paste
 set clipboard+=autoselect
 set guioptions+=a

 set tabstop=4
 set shiftwidth=4
 set expandtab

 let g:html_indent_inctags = "html,body,head,tbody"
 let g:html_indent_script1 = "inc"
 let g:html_indent_style1 = "inc"

 let g:SuperTabDefaultCompletionType = "context"

 let g:tabular_loaded = 1

 nmap <C-S-UP>   <Plug>(LineJugglerMoveUp)
 nmap <C-S-DOWN> <Plug>(LineJugglerMoveDown)
 vmap <C-S-UP>   <Plug>(LineJugglerMoveUp)
 vmap <C-S-DOWN> <Plug>(LineJugglerMoveUpDown)

 nmap <C-S-LEFT> <Plug>(LineJugglerDupOverUp)
 nmap <C-S-RIGHT> <Plug>(LineJugglerDupOverDown)


 if has('statusline')
         set laststatus=2
         set statusline=%{fugitive#statusline()}
         set statusline+=%<%f
         set statusline+=%w%h%m%r
         set statusline+=\ [%{&ff}/%Y]
         set statusline+=%=%-14.(line:%l,col:%c%V%)\ %p%%
 endif


