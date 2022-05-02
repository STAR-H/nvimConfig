
"/ ___|      |_   _|        / \        |  _ \
"\___ \        | |         / _ \       | |_) |
" ___) |  _    | |    _   / ___ \   _  |  _ <   _
"|____/  (_)   |_|   (_) /_/   \_\ (_) |_| \_\ (_)
"

"===
"=== 通用设置
"===
let mapleader = "," " 定义<leader>键
filetype on         " 开启文件类型
filetype plugin on  " 加载对应文件插件
set noeb            " 关闭错误提示
syntax enable       " 开启语法高亮
syntax on
set nocompatible
set cmdheight=2
set showcmd
set noruler
set laststatus=2
set number
set relativenumber
set cursorline
set whichwrap+=<,>,h,l
set ttimeoutlen=0
set virtualedit=block,onemore
set updatetime=100
set termguicolors
set shortmess+=c
set signcolumn=yes
" set lazyredraw
set noshowmode
set ttyfast
set scrolloff=10
set fillchars=vert:\ ,stl:\ ,stlnc:\
" set list
" set listchars=tab:▸\ ,trail:▫
" here is space
set list lcs=tab:\|\
set magic
set redrawtime=1500
set splitright splitbelow
" set fcs=eob:\
set showmatch
set matchtime=1
set pumheight=15
" set mouse=a
set mouse=
"禁止环形搜索
"set nowrapscan
set wrapscan
"取消nvimcursor错误
" set guicursor=
if exists('+previewpopup')
	set previewpopup=height:10,width:60
endif
set tags=./.tags;,.tags


"===
"=== 代码缩进和排版
"===
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
filetype indent on
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
" set nowrap
set wrap
set backspace=2
set textwidth=80

"===
"=== 代码补全
"===
set wildmenu
set completeopt-=preview

"===
"=== 搜索设置
"===
set hlsearch
set incsearch
set ignorecase

"===
"=== 缓存设置
"===
set nobackup
set noswapfile
set autoread
set autowrite
set confirm

"===
"=== 编码设置
"===
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=UTF-8
set fileencodings=utf8,ucs-bom,gbk,gb2312,gb18030

"Vim-Plug的首次下载安装
if empty(glob('~/.config/nvim/autoload/plug.vim'))
 silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"===
"=== Plugin list
"===
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chxuan/vim-buffer'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-commentary'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine',{ 'for': ['c', 'h', 'cpp', 'py', 'json',  'vim'] }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'MattesGroeger/vim-bookmarks'
Plug 't9md/vim-quickhl'
Plug 'guns/xterm-color-table.vim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'rktjmp/lush.nvim'
call plug#end()

"===
"=== 分屏窗口移动
"===
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"===
"=== 打开文件自动定位到最后编辑的位置
"===
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

"===
"=== 主题设置
"===
set background=dark
let g:_termcolors=256
colorscheme gruvbox

"===
"=== vim-easy-align
"===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"===
"=== rainbow
"===
let g:rainbow_active = 1

"===
"=== vim-buffer
"===
"
nnoremap <silent> <leader>d :CloseBuffer<cr>
nnoremap <silent> <leader>D :BufOnly<cr>

"===
"=== Resize splits with arrow keys
"===
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

"===
"=== vim-airline
"===
"
let g:airline_highlighting_cache = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'alduin'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tagbar#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tabline#buffer_idx_format = {
            \ '0': '0 ',
            \ '1': '❶ ',
            \ '2': '❷ ',
            \ '3': '❸ ',
            \ '4': '❹ ',
            \ '5': '❺ ',
            \ '6': '❻ ',
            \ '7': '❼ ',
            \ '8': '❽ ',
            \ '9': '❾ '
            \}

"===
"=== nerdTree
"===
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeNodeDelimiter="😀"       "smiley face
let NERDTreeChDirMode=2
let NERDTreeWinPos="right"

"===
"=== tagbar
"===
nmap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_width = 40
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1
let g:tagbar_autoshowtag = 0
let g:tagbar_left = 1
let g:tagbar_scopestrs = {
            \    'class': "\uf0e8",
            \    'const': "\uf8ff",
            \    'constant': "\uf8ff",
            \    'enum': "\uf702",
            \    'field': "\uf30b",
            \    'func': "\uf794",
            \    'function': "\uf794",
            \    'getter': "\ufab6",
            \    'implementation': "\uf776",
            \    'interface': "\uf7fe",
            \    'map': "\ufb44",
            \    'member': "\uf02b",
            \    'method': "\uf6a6",
            \    'setter': "\uf7a9",
            \    'variable': "\uf71b",
            \ }

"===
"=== neovim
"===
"
let g:loaded_ruby_provider = 0
let g:python3_host_prog = "/usr/bin/python3"
let g:python_host_prog = "/usr/bin/python2"

"===
"=== coc.nvim
"===
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-lists',
            \ 'coc-clangd',
            \ 'coc-floatinput',
            \ 'coc-git',
            \ 'coc-jedi',
            \ 'coc-pyright',
            \ 'coc-python',
            \ 'coc-actions',
            \ 'coc-syntax']

nmap <silent> <leader>a :CocCommand clangd.switchSourceHeader<CR>

" 使用 <tab> 触发补全: >
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" 使用 <CR> 确认补全，并触发 coc.nvim 的 `formatOnType` 功能: >
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

augroup mygroup
    autocmd!
    " Update signature help on jump placeholder.
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Apply AutoFix to problem on the current line.
nmap <leader>ff  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

"coc-git
"navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
"nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

"===
"=== indentLine
"===
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indentLine_fileType = ['c', 'cpp', 'py']
let g:indentLine_fileTypeExclude = ['text', 'sh']
let g:indentLine_bufTypeExclude = ['help', 'terminal']


"===
"=== fzf.vim
"===
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extras=+qf --language-force=c++ -f .tags'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
command! -bang -nargs=* Rg
            \call fzf#vim#grep("rg --column --line-number --no-heading --color=always --ignore-case --multiline --word-regexp --".shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
"===
"=== vim-quickhl
"===
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_show_toggle_warning = 0
let g:bookmark_highlight_lines = 1
let g:bookmark_location_list = 1
let g:bookmark_disable_ctrlp = 1
let g:bookmark_show_warning = 0
let g:bookmark_auto_close = 1
let g:bookmark_auto_save = 0
let g:bookmark_center = 1
let g:bookmark_sign = '♥'

:highlight BookmarkSign guifg=#00ffff guibg=#3c3836
:highlight BookmarkAnnotationSign guifg=#00ffff guibg=#3c3836
nmap bb <Plug>BookmarkToggle
nmap bi <Plug>BookmarkAnnotate
nmap ba <Plug>BookmarkShowAll
nmap bj <Plug>BookmarkNext
nmap bk <Plug>BookmarkPrev
nmap bc <Plug>BookmarkClear
nmap bx <Plug>BookmarkClearAll

"===
"=== vim-quickhl
"===
nmap mm <Plug>(quickhl-manual-this)
xmap mm <Plug>(quickhl-manual-this)
nmap mc <Plug>(quickhl-manual-reset)
xmap mc <Plug>(quickhl-manual-reset)
nmap n  <Plug>(quickhl-manual-go-to-next)
nmap N  <Plug>(quickhl-manual-go-to-prev)
" guifg > 文字颜色
let g:quickhl_manual_colors = [
            \ "gui=bold ctermfg=7   ctermbg=1   guifg=#000000 guibg=#ddf3ff",
            \ "gui=bold ctermfg=7   ctermbg=2   guifg=#000000 guibg=#f0dad2",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#000000 guibg=#ff5f00",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#000000 guibg=#fbfbea",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#ffffff guibg=#479ac7",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#000000 guibg=#00ffff",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#000000 guibg=#00ff87",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#ffffff guibg=#af0000",
            \ "gui=bold ctermfg=7   ctermbg=3   guifg=#ffffff guibg=#8700df",
            \ ]
"generate ctags
"ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extras=+qf --language-force=c++ -f .tags

" remove unuseless wasteful whitespace end of line
autocmd BufWritePost * :%s/\s\+$//ge
" updatetime: Wed Aug 25 15:36:55 CST 2021
