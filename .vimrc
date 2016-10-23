
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
 Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "开始使用Vundle的必须配置

au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile> | endif | endif
" 禁止光标闪烁
set gcr=a:block-blinkon0
" " 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" " 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
set nocompatible
" 总是显示状态栏
set laststatus=2
" " 显示光标当前位置
set ruler
" " 开启行号显示
set number
" " 高亮显示当前行/列
set cursorline
set cursorcolumn
" " 高亮显示搜索结果
set hlsearch
" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
" "set foldmethod=indent
set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"
" "使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
"
" "PowerLine插件 状态栏增强展示

Bundle 'indexer'
Bundle 'DfrankUtil'
Bundle 'vimprj'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tomasr/molokai'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'SirVer/ultisnips'
Bundle 'shaitool/nerdtree'
Bundle 'vim-scripts/taglist-plus'
Bundle 'vim-scripts/winmanager'
Bundle 'vim-scripts/minibufexplorerpp'
" "vim有一个状态栏 加上powline则有两个状态栏
" " 设置插件 indexer 调用 ctags 的参数
" " 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" " 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
 let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v--fields=+iaSl --extra=+q"
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
colorscheme molokai"
" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" " 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" " 色块宽度
let g:indent_guides_guide_size=2
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" " 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" " 设置标签子窗口的宽度 
let tagbar_width=32 
" " tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" " 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp ={
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
    \ 'sro'        : '::',
     \ 'kind2scope' : {
        \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
 \ }
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" " 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" " 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" " 显示隐藏文件
let NERDTreeShowHidden=1
" " NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:bufExplorerMaxHeight=30
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
" "Vundle配置必须 开启插件
filetype plugin indent on
    
    
