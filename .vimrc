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
Plugin 'https://github.com/vim-scripts/L9.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/w0rp/ale.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'https://github.com/editorconfig/editorconfig-vim.git'
Plugin 'https://github.com/millermedeiros/vim-esformatter.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'https://github.com/svermeulen/vim-easyclip.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/elzr/vim-json.git'
Plugin 'https://github.com/gioele/vim-autoswap.git'
Plugin 'https://github.com/EinfachToll/DidYouMean.git'
Plugin 'https://github.com/wincent/terminus.git'
Plugin 'https://github.com/ybian/smartim.git'
Plugin 'https://github.com/dietsche/vim-lastplace.git'
Plugin 'https://github.com/mileszs/ack.vim.git'
Plugin 'https://github.com/MattesGroeger/vim-bookmarks.git'
Plugin 'https://github.com/ntpeters/vim-better-whitespace.git'
Plugin 'https://github.com/tomasr/molokai.git'

let g:bookmark_no_default_key_mappings = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
nmap <silent> ma :BookmarkToggle<CR>
nmap <silent> me :BookmarkAnnotate<CR>
nmap <silent> ml :BookmarkShowAll<CR>
nmap <silent> mn :BookmarkNext<CR>
nmap <silent> mb :BookmarkPrev<CR>
nmap <silent> mc :BookmarkClearAll<CR>

let g:TerminusInsertCursorShape = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|target)|(\.(git|svn|hg))$',
  \ 'file': '\v\.(exe|so|dll|swp)$'
  \ }

" 不经常用
Plugin 'https://github.com/rust-lang/rust.vim.git'
Plugin 'https://github.com/fatih/vim-go.git'
"Plugin 'https://github.com/SirVer/ultisnips.git'
"Plugin 'https://github.com/honza/vim-snippets.git'

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

let g:airline_powerline_fonts = 1
" let g:airline_theme='badwolf'
let g:airline_theme='blue'
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'error', 'warning', 'c'],
  \ [ 'z', 'x', 'y']
  \ ]

"NERDTree
map <silent> <C-t> :NERDTreeToggle<CR>

let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_lint_delay = 100
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" YCM 配置
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_auto_trigger = 1
let g:ycm_key_invoke_completion = '<C-x>'

set updatetime=5

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '**'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '-*'
let g:gitgutter_sign_removed_first_line = '-'

let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipPreserveCursorPositionAfterYank = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCustomDelimiters = { 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' } }

"打开powerline
set laststatus=2

" 快捷键映射
let mapleader = " "
set timeoutlen=500
" leader 的默认值为 \

let g:vim_json_syntax_conceal = 0

" crontab -e edit bug
autocmd filetype crontab setlocal nobackup nowritebackup

let g:ycm_global_ycm_extra_conf = '/Users/rkd/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:rustfmt_autosave = 1

" 利用Tab键和Shift-Tab键来缩进文本
" V 选中整行 > 向右缩进 < 向左缩进
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" 取消搜索高亮
nnoremap <silent> <leader><Esc> :<C-u>nohlsearch<CR>

" 复制光标所在的单词
nnoremap <silent> <leader>y viwy
vnoremap <silent> <leader>y iwy


" 注释快捷键
" leader cs
" leader cl
" leader cu

let g:gitgutter_max_signs = 10000
let g:javascript_plugin_jsdoc = 1

let g:smartim_default = 'com.apple.keylayout.US'
