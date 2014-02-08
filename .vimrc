"The syntax off is on again after loading the VimOrganizer. If not
"VimOrganizer will complain if an org file opens. 
syntax off
set nocompatible              " be iMproved
filetype off                  " required!

"Added by Christian to get packages from Git with Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

colorscheme lucius
set nu
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'hsitz/VimOrganizer'
"Bundle 'jceb/vim-orgmode'
syntax on
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/mediawiki.vim'
" colorschemes
Bundle 'flazz/vim-colorschemes'
Bundle 'jonathanfilip/vim-lucius'
"
" original repos on GitHub
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help l
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

au BufRead,BufNewFile *support.iqnomy.com*      set filetype=mediawiki

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
 au BufEnter *.org call org#SetOrgFileType()
 " let g:org_capture_file = '~/org_files/mycaptures.org'

 command! OrgCapture :call org#CaptureBuffer()

 command! OrgCaptureFile :call org#OpenCaptureFile()

+syntax on
cd ~/org_files
