"============================================================
"Description: ~/.vimrc for s.c
"Last Change: Friday,January 21,2017
"Plugin List:
"   taglist_46.zip 
"   1.download from http://www.vim.org/scripts/download_script.php?src_id=19574
"   2.# unzip taglist_46.zip -d ~/.vim
"   3.# cd ~/.vim/doc
"     # vim
"     :helptags .
"     :q
"   you can run :help taglist.txt in vim
"============================================================
"filetype plugin indent on
filetype on                             "打开文件类型检测（不同文件有不同的格式）
filetype plugin on                      "允许vim加载文件类型插件
"filetype indent on                      "允许vim为不同类型的文件定义不同的缩进格式
colorscheme evening                     "代码配色方案
set nu                                  "开启行号
set ruler                               "开启状态栏标尺
set cursorline                          "突出显示光标所在行
set ts=4                                "设置tab为4个空格（输入tab以4个空格代替）
set expandtab                           "读取tab也以4个空格代替（需配合上条使用）
set shiftwidth=4                        "换行时行间交错使用4个空格
set autoindent                          "自动对齐
set smartindent                         "智能对齐
set showmatch                           "设置匹配模式，如输入{自动匹配}
set incsearch                           "即时搜索模式

"for plugin - TagList
noremap <silent><F2> :Tlist<cr>         "F2打开隐藏taglist窗口
let Tlist_Show_One_File=1               "只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1             "如果taglist是最后一个窗口，则退出vim
