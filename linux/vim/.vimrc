"============================================================
"Description: ~/.vimrc for s.c
"Revision History:
"   2017-01-28 02:22 install plugin Vundle
"   2017-01-29 22:26 optimize startup time
"============================================================
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
"set lazyredraw                          "在执行宏命令时，不进行显示重绘；
                                        "在宏命令执行完成后，一次性重绘，以便提高性能。
set encoding=utf-8                                       
set hlsearch                            "设置高亮搜索(:noh可取消高亮)
set showcmd                             "将输入的命令显示出来，便于查看当前输入的信息
set history=100                         "设置vim存储的历史命令记录的条数
set softtabstop=4                       "在按退格键时，如果前面有4个空格，则会统一清除
set magic                               "设置magic,在正则匹配时可省略部分转义字符
let mapleader=","                       "设置前导按键<leader>

"plugin Vundle
"{

    "set nocompatible              " be iMproved, required
    "filetype off                  " required
    
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    
    " let Vundle manage itself, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'majutsushi/tagbar'
    "Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline'
    Plugin 'kien/ctrlp.vim'             "全局搜索
    Plugin 'Valloric/YouCompleteMe'
    "Plugin 'vim-airline/vim-airline-themes'
    "Plugin 'scrooloose/nerdtree'       "暂时觉得没什么必要
    "Plugin 'Lokaltog/vim-powerline'
    "Plugin 'taglist.vim'               "tagbar似乎更好用
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
    "filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    filetype plugin on
    
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
   " noremap <silent><F2> :Tlist<cr>         "设置快捷键F2(禁止回显)打开/隐藏窗口
   " let Tlist_Show_One_File=1               "只显示当前文件的tag
   " let Tlist_Exit_OnlyWindow=1             "如果taglist是最后一个窗口，则退出vim
   " let Tlist_GainFocus_On_ToggleOpen = 1   "Taglist窗口打开时，立刻切换为有焦点状态
   " let Tlist_Sort_Type ='name'             "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
   " let Tlist_WinWidth = 32                 "设置窗体宽度
"}

"plugin TagBar
"{
    nmap <silent><F2> :Tagbar<cr>           "设置快捷键F3(禁止回显)打开/隐藏窗口
    let g:tagbar_ctags_bin = 'ctags'        "//TODO 不设置似乎也没什么问题?
    let g:tagbar_width=32                   "设置窗体宽度
    let g:tagbar_left=1                     "窗体显示在左边,默认在右
    "autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()    "c/c++自动开启
"}

"plugin vim-airline
"{
   set t_Co=256                             "开启256色
   set laststatus=2                         "开启状态栏，默认为1(关闭)
   "let g:airline_theme="molokai"
   " "打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#tabline#buffer_nr_show = 1
   nnoremap <C-s-tab> :bp<CR>
   " 使用powerline打过补丁的字体  
   "let g:airline_powerline_fonts=1     "TODO:增加此行Tab栏有箭头比较好看，但左下角有乱码(方框内问题)
   if !exists('g:airline_symbols')  
        let g:airline_symbols={}  
   endif 
   " powerline symbols
   let g:airline_left_sep = ''
   let g:airline_left_alt_sep = ''
   let g:airline_right_sep = ''
   let g:airline_right_alt_sep = ''
   let g:airline_symbols.branch = ''
   let g:airline_symbols.readonly = ''
   let g:airline_symbols.linenr = ''
  
   " 关闭空白符检测  
   let g:airline#extensions#whitespace#enabled = 0
   let g:airline#extensions#whitespace#symbol = '!'
"}

"plugin NERDTree
"{
   " nmap <silent><F3> :NERDTreeToggle<CR>
   " "退出最后一个窗口时自动关闭
   " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
   " let NERDTreeWinPos='left'
   " let NERDTreeWinSize=30
   " let NERDTreeDirArrows=0             "显示+号，默认为>
"}

"plugin ctrlp
"{
    let g:ctrlp_working_path_mode = 'ra'
    set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
    let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}
"}

"plugin YouCompleteMe
"{
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'  
    let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  
    let g:ycm_confirm_extra_conf=0  " 打开vim时不再询问是否加载ycm_extra_conf.py配置  
    inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项  
    set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)  
    " let g:ycm_error_symbol = '>>'
    " let g:ycm_warning_symbol = '>*'
    " nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
    " nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
    " nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
    " nmap <F4> :YcmDiags<CR>
"}
