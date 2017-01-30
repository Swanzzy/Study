"============================================================
"Description: ~/.vimrc for s.c
"Revision History:
"   2017-01-28 02:22 install plugin Vundle
"   2017-01-29 22:26 optimize startup time
"   2017-01-30 16:25 add plugin NERDTree
"   2017-01-30 23:57 rejust global setting
"============================================================
"ref
"{
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"http://blog.csdn.net/usbdrivers/article/details/8103964
"http://www.cnblogs.com/ma6174/archive/2011/12/10/2283393.html
"Ack:http://www.tuicool.com/articles/IveYNbe
"}
"" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

set nocp                                "nocompatible:remove compatible features for vi
"set noml                               "nomodelines:format for some special files
set encoding=utf-8                      "enable utf-8 encode,this is refer to charset encoding,not files

"for window
"{
set nu                                  "number:show line numbers
"set rnu                                "show relative number
"set cursorline                         "display current line
"set cursorcolumn                       "display current column
"set ruler                              "show the cursor position all the time
set ls=2                                "laststatus:always show status line(default:1)"
"}

"for formatting
"{
set ts=4                                "tabstop:numbers of spaces of tab character
set shiftwidth=4                        "numbers of spaces to (auto)indent
set softtabstop=4                       "delete 4 spaces when [Backspace]
set expandtab                           "tabs are converted to spaces,use only when rq
set wrap
set textwidth=79
set fo=qrn1                             "formatoptions :help fo-table
"set colorcolumn=85
set autoindent                          "always set autoindenting on
set cindent                             "to indent in code block when C programming
set smartindent     
"syntax on    
colorscheme evening        
"}

"for searching/moving
"{
"set scrolloff=3                        "cursor distance for buffer top/bottom
"set showmode                           "show NORMAL/INSERT..mode 
set ttyfast                             "smoother changes
nnoremap / /\v
vnoremap / /\v
set magic                               "for regular expression
set ignorecase                          "ignore case when searching
set smartcase
set gdefault                            "instead of :%s/foo/bar/g you just type :%s/foo/bar/
set incsearch                           "do incremental searching
set showmatch                           "show matching braces,somewhat annoying...
set hlsearch                            "higlight searches(:noh for cancel)
"}

"for editting/saving
"{
set hidden                              "allowed switching buffers with unsaved changes when 
set undofile
set nobackup
set noswapfile
set backspace=2                         "invalid when v8.0?
"}

"for map key
"{
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"inoremap <F1> <ESC>
"nnoremap <F1> <ESC>
"vnoremap <F1> <ESC>
nnoremap <tab> %
vnoremap <tab> %
let mapleader=','                       "mapleader:set <leader> key,default(\)
nnoremap <leader><space> :noh<cr>
"nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>   "strip all trailing whitespace in the current file
"for plugin Ack
nnoremap <leader>f :Ack                
"}

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
    "Plugin 'kien/ctrlp.vim'             "文件搜索
    Plugin 'Valloric/YouCompleteMe'
    "Plugin 'vim-airline/vim-airline-themes'
    Plugin 'scrooloose/nerdtree'       
    "Plugin 'Lokaltog/vim-powerline'
    "Plugin 'taglist.vim'               "tagbar似乎更好用
    Plugin 'mileszs/ack.vim'
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
    "let g:tagbar_ctags_bin = 'ctags'        "//TODO 不设置似乎也没什么问题?
    let g:tagbar_width=32                   "设置窗体宽度
    let g:tagbar_left=1                     "窗体显示在左边,默认在右
    let g:tagbar_autoclose=1                "每次选择一个tag后自动关闭(挺有用的)
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
    nnoremap <C-S-N> :bn<CR>                        
    nnoremap <C-S-P> :bp<CR>
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
   nmap <silent><F3> :NERDTreeToggle<CR>
   "退出最后一个窗口时自动关闭(不好使)
   "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
   let NERDTreeQuitOnOpen=1             "打开一个文件后就自动关闭
   let NERDTreeWinPos='left'
   let NERDTreeWinSize=30
   let NERDTreeDirArrows=0              "显示+号，默认为>
"}

"暂时感觉不需要此功能，决定通过Win下的SourceInsight配合使用
"此插件功能大概相当于ctrl+o的功能
"plugin ctrlp
"{
   " let g:ctrlp_map = '<C-B>'           "可修改打开的快捷键(默认为<C-P>
   " let g:ctrlp_cmd = 'CtrlP'
   " let g:ctrlp_working_path_mode = 'ra'
   " set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
   " let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}
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

"plugin Ack
"{
    "$ sudo yum -y install the_silver_searcher
    let g:ackprg = 'ag --nogroup --nocolor --column'
"}
