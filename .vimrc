execute pathogen#infect()
syntax enable
filetype plugin indent on

set number
set encoding=utf-8
set shiftwidth=2
set ruler
set incsearch
set hlsearch
"set background=dark
"colorscheme solarized

nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件

let g:nerdtree_tabs_open_on_console_startup=1       "设置打开vim的时候默认打开目录树

"设置打开/关闭目录树的快捷键
nnoremap <F10> :exe 'NERDTreeToggle'<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
