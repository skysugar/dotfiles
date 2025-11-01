"安装vim-plug插件管理器
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"安装完成后，进入vim执行 :PlugInstall 安装插件
"

" ---------- 基础设置 ----------
syntax enable
filetype plugin indent on

set nocompatible
set number
set relativenumber
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set ruler
set incsearch
set ignorecase
set smartcase
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set mouse=a

" 使用 256 色
set t_Co=256

" 启用终端 GUI 色
if has("termguicolors")
  set termguicolors
endif

" 设置光标颜色
let &t_SI = "\e[6 q"    " 插入模式
let &t_EI = "\e[2 q"    " 普通模式

" ---------- 插件管理 ----------
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ---------- NERDTree ----------
autocmd VimEnter * if argc() == 0 | NERDTree | endif
autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree')) | quit | endif
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
nnoremap <F10> :NERDTreeToggle<CR>

" ---------- 快捷键 ----------
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>r :so %<CR>
nnoremap <C-l> :tabn<cr>
nnoremap <C-h> :tabp<cr>
nnoremap <C-n> :tabnew<cr>
nnoremap <C-j> :bn<cr>
nnoremap <C-k> :bp<cr>

" ---------- 外观 ----------
set background=dark        " dark 模式
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'    " dark 模式下的对比度，可选 soft/medium/hard
let g:gruvbox_invert_selection = '0'
let g:gruvbox_transparent_bg = 1

let g:airline_theme='gruvbox'           " Airline 配色使用 gruvbox
let g:airline_powerline_fonts=1
