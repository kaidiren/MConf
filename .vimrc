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

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'c.vim'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'rust-lang/rust.vim'
"Plugin 'luochen1990/rainbow'

" plugin from github
Plugin 'https://github.com/vim-scripts/L9.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'https://github.com/editorconfig/editorconfig-vim.git'
Plugin 'https://github.com/millermedeiros/vim-esformatter.git'
Plugin 'https://github.com/isRuslan/vim-es6.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'https://github.com/svermeulen/vim-easyclip.git'
Plugin 'https://github.com/SirVer/ultisnips.git'
Plugin 'https://github.com/honza/vim-snippets.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/elzr/vim-json.git'
Plugin 'https://github.com/gioele/vim-autoswap.git'
Plugin 'https://github.com/EinfachToll/DidYouMean.git'
Plugin 'https://github.com/wincent/terminus.git'
Plugin 'https://github.com/rust-lang/rust.vim.git'
Plugin 'https://github.com/fatih/vim-go.git'
"Plugin 'https://github.com/kaidiren/smartim.git'
Plugin 'https://github.com/ybian/smartim.git'
Plugin 'https://github.com/dietsche/vim-lastplace.git'

let g:smartim_default = 'com.apple.keylayout.US'
" 注释快捷键
" leader cs 
" leader cl
" leader cu 
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

"NERDTree
map <silent> <C-t> :NERDTreeToggle<CR>

"进入 vim 自动打开 NERDTree
" autocmd vimenter * NERDTreeToggle
" autocmd VimEnter * NERDTree
" wincmd w
" autocmd VimEnter * wincmd w



let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
let g:syntastic_json_checkers=['jsonlint']

" quickfix 配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 10
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⚠️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '⚠️'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" YCM 配置
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 0


set updatetime=5

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '**'
let g:gitgutter_sign_removed = '--'

let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipPreserveCursorPositionAfterYank = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

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

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:TerminusInsertCursorShape = 0

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
