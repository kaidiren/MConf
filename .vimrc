" vim +PluginInstall +qall
set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'https://github.com/VundleVim/Vundle.vim.git'

" plugin from github

" 一直都在用
" Plugin 'https://github.com/vim-scripts/L9.git'
" Plugin 'https://github.com/tpope/vim-fugitive.git'
" Plugin 'https://github.com/Valloric/YouCompleteMe.git'
 Plugin 'https://github.com/w0rp/ale.git'
" Plugin 'https://github.com/scrooloose/nerdtree.git'
 Plugin 'https://github.com/altercation/vim-colors-solarized.git'
" Plugin 'https://github.com/vim-airline/vim-airline.git'
" Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
" Plugin 'https://github.com/Yggdroot/indentLine.git'
" Plugin 'https://github.com/editorconfig/editorconfig-vim.git'
" Plugin 'https://github.com/millermedeiros/vim-esformatter.git'
" Plugin 'https://github.com/pangloss/vim-javascript.git'
" Plugin 'https://github.com/tpope/vim-repeat.git'
" Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Plugin 'https://github.com/airblade/vim-gitgutter.git'
" Plugin 'https://github.com/svermeulen/vim-easyclip.git'
" Plugin 'https://github.com/scrooloose/nerdcommenter.git'
" Plugin 'https://github.com/elzr/vim-json.git'
" Plugin 'https://github.com/gioele/vim-autoswap.git'
" Plugin 'https://github.com/EinfachToll/DidYouMean.git'
" Plugin 'https://github.com/wincent/terminus.git'
" Plugin 'https://github.com/ybian/smartim.git'
" Plugin 'https://github.com/dietsche/vim-lastplace.git'
" Plugin 'https://github.com/mileszs/ack.vim.git'
" Plugin 'https://github.com/MattesGroeger/vim-bookmarks.git'
" Plugin 'https://github.com/ntpeters/vim-better-whitespace.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 通用配置
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set textwidth=120
set backspace=2
set hlsearch
"默认编码
set encoding=utf-8

"行号
set nu

"开启折叠
" za 折叠 za 打开
set foldmethod=marker
set foldmarker={,}
"默认打开文件的时候不折叠
set foldlevelstart=999

"开启实时搜索功能
set incsearch

"搜索时大小写不敏感
set ignorecase

"设置为粘贴模式
"set paste

set clipboard=unnamed

"主题
syntax enable
set background=dark
colorscheme solarized

" let g:ale_set_quickfix = 1
" let g:ale_sign_column_always = 1
" let g:ale_open_list = 0
" let g:ale_lint_delay = 100
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
