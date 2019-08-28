"""""""""""""""""""""""""""""""""""""""""""""""
" 基础配置
"""""""""""""""""""""""""""""""""""""""""""""""
" tab缩进
set tabstop=2
"	开启语法高亮
syntax enable
"	开启使用其他语法高亮方案
syntax on
" 开启状态栏标尺，既状态栏的行/列数值显示
set ruler
" 高亮显示当前行
set cursorline
" 高亮显示当前列
" set cursorcolumn
" 开启行号
set number 
" 高亮显示搜索结果
set hlsearch




"""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置vundle
"""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" 自定义begin
Plugin 'scrooloose/nerdtree' " 侧边栏
Plugin 'vim-airline/vim-airline' " 美化状态栏
Plugin 'vim-airline/vim-airline-themes'
" 自定义end
call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""
" 插件个性化配置
"""""""""""""""""""""""""""""""""""""""""""""""
" 🧙 nerdtree
" 打开vim默认显示nerdtree
autocmd vimenter * NERDTree
" 设置nerdtree显示/隐藏快捷键control+n
map <C-n> :NERDTreeToggle<CR>
" 当只有一个窗口的时候，直接关闭侧边栏
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 🧙 abc
