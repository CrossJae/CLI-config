" 开启语法高亮功能
syntax enable

" 开启使用其他语法高亮方案
syntax on

" tab缩进
set tabstop=4

" 显示光标当前位置
set ruler

" 开启行号
" set number 

" 高亮显示搜索结果
set hlsearch

" 高亮显示当前行/列
" set cursorline
" set cursorcolumn

" vundle 环境设置
set nocompatible	" 去除VI一致性
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
" 插件列表结束
call vundle#end()
filetype plugin indent on

" 打开vim默认显示nerdtree
autocmd vimenter * NERDTree
" 设置nerdtree显示/隐藏快捷键control+n
map <C-n> :NERDTreeToggle<CR>

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
