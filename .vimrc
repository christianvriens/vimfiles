set nocompatible              " be iMproved
filetype off                  " required!
syntax on
colorscheme badwolf
set background=dark
let g:Powerline_symbols = 'unicode'
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"colorscheme lucius
set nu

" if has("gui_running")
"    let s:uname = system("uname")
"    if s:uname == "Darwin\n"
"       set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
"    endif
" endif


" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
"set backspace+=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
" remapping keys
inoremap jj <ESC>
"unmap the arrow keys
"no <down> <Nop>
"no <up> <Nop>
"no <left> <Nop>
"no <right> <Nop>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

no <Left> <<
no <Right> >>
no <Up> ddkP
no <Down> ddp

set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
"The syntax off is on again after loading the VimOrganizer. If not
"VimOrganizer will complain if an org file opens. 
syntax off
Bundle 'hsitz/VimOrganizer'
"Bundle 'jceb/vim-orgmode'
syntax on


 " original repos on github
 Bundle 'aperezdc/vim-template'
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
" Bundle 'fholgado/minibufexpl', {'rtp': 'minibufexpl/bindings/vim/'}
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/snipmate-snippets'
 Bundle 'vim-scripts/mediawiki.vim'
 Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Bundle 'mattn/calendar-vim'
" Bundle 'vim-scripts/utl', {'rtp': 'utl/bindings/vim/'}
" Bundle 'bling/vim-airline'
 " colorschemes
 Bundle 'flazz/vim-colorschemes'
 Bundle 'jonathanfilip/vim-lucius'
 " vim-scripts repos
 Bundle 'NrrwRgn'
 Bundle 'FuzzyFinder'
 Bundle 'taglist.vim'
 "Bundle 'VimPdb'
 " non github repos
 Bundle 'L9'
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...
 

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 au BufRead,BufNewFile *support.iqnomy.com*      set filetype=mediawiki
 
 au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
 au BufEnter *.org call org#SetOrgFileType()
 let g:org_capture_file = '~/org_files/mycaptures.org'

 command! OrgCapture :call org#CaptureBuffer()
 command! OrgCaptureFile :call org#OpenCaptureFile()

 let g:org_todo_setup='TODO | STARTED | WAITING | DONE'
 cd ~/org_files
"let g:org_todo_setup='TODO STARTED | DONE'

" Powerline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
autocmd FileType python set omnifunc=pythoncomplete#Complete

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
