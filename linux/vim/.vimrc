"============================================================
"Description: ~/.vimrc for s.c
"Revision History:
"   2017-01-28 02:22 install plugin Vundle
"============================================================
"filetype plugin indent on
filetype on                             "打开文件类型检测（不同文件有不同的格式）
filetype plugin on                      "允许vim加载文件类型插件
"filetype indent on                      "允许vim为不同类型的文件定义不同的缩进格式
syntax on                               "启用语法检查
colorscheme evening                     "代码配色方案
set nu                                  "开启行号
set ruler                               "开启状态栏标尺
"set cursorline                          "突出显示光标所在行
set ts=4                                "设置tab为4个空格（输入tab以4个空格代替）
set expandtab                           "读取tab也以4个空格代替（需配合上条使用）
set shiftwidth=4                        "换行时行间交错使用4个空格
set autoindent                          "自动对齐
set smartindent                         "智能对齐
set showmatch                           "设置匹配模式，如输入{自动匹配}
set incsearch                           "即时搜索模式
set backspace=2                         "安装V8.0后删除键失效
                                        "http://www.wtoutiao.com/p/H19Ufd.html
"plugin Vundle
"{

    set nocompatible              " be iMproved, required
    filetype off                  " required
    
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    " "call vundle#begin('~/some/path/here')
    
    " let Vundle manage itself, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'taglist.vim' 
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    " Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}
    
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
"}

"plugin TagList
"{
    noremap <silent><F2> :Tlist<cr>         "F2打开隐藏taglist窗口
    let Tlist_Show_One_File=1               "只显示当前文件的tag
    let Tlist_Exit_OnlyWindow=1             "如果taglist是最后一个窗口，则退出vim
    let Tlist_GainFocus_On_ToggleOpen = 1   "Taglist窗口打开时，立刻切换为有焦点状态
    let Tlist_Sort_Type ='name'             "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
    let Tlist_WinWidth = 32                 "设置窗体宽度
"}
