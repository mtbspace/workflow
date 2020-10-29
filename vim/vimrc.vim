set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/workflow/vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/workflow/vim/.installed_plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" powerline
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" You complete me
" https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim-javascript (syntax highlighting)
" https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'

" Asynchronous Lint Engine
" https://github.com/w0rp/ale
Plugin 'w0rp/ale'

" git (vim-fugitive)
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

Plugin 'mhinz/vim-signify'

" typeScript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Quramy/tsuquyomi'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
set t_Co=256

" useful settings for powerline
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" 2 spaces for tabs
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" ALE settings
let g:ale_fixers = {
\   'javascript': ['eslint', 'tsserver'],
\}

" vim-fugitive 
set statusline+=%{FugitiveStatusline()}

" vim-signify
let g:signify_realtime = 1

" let ycm know where python is
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" ycm autocomplete for typescript
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
