


set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" URL: http://vim.wikia.com/wiki/Example_vimrc
 " Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
 " Description: A minimal, but feature rich, example .vimrc. If you are a
 "              newbie, basing your first .vimrc on this file is a good choice.
 "              If you're a more advanced user, building your own .vimrc based
 "              on this file is still a good idea.
 
 "------------------------------------------------------------
 " Features {{{1
 "
 " These options and commands enable some very useful features in Vim, that
 " no user should have to live without.
 
 " Set 'nocompatible' to ward off unexpected things that your distro might
 " have made, as well as sanely reset options when re-sourcing .vimrc
 " Vi互換モードをオフ（Vimの拡張機能を有効）
 set nocompatible
 
 " Attempt to determine the type of a file based on its name and possibly its
 " contents.  Use this to allow intelligent auto-indenting for each filetype,
 " and for plugins that are filetype specific.
 " ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
 filetype indent plugin on
 
 " Enable syntax highlighting
 " 色づけをオン
 syntax on
 au BufRead,BufNewFile *.jade setfiletype jade
 
 "------------------------------------------------------------
 " Must have options {{{1
 "
 " These are highly recommended options.
 " 強く推奨するオプション
 
 " One of the most important options to activate. Allows you to switch from an
 " unsaved buffer without saving it first. Also allows you to keep an undo
 " history for multiple files. Vim will complain if you try to quit without
 " saving, and swap files will keep you safe if your computer crashes.
 " バッファを保存しなくても他のバッファを表示できるようにする
 set hidden
 
 " Better command-line completion
 " コマンドライン補完を便利に
 set wildmenu
 
 " Show partial commands in the last line of the screen
 " タイプ途中のコマンドを画面最下行に表示
 set showcmd
 
 " Highlight searches (use <C-L> to temporarily turn off highlighting; see the
 " mapping of <C-L> below)
 " 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
 set hlsearch
 
 " Modelines have historically been a source of security vulnerabilities.  As
 " such, it may be a good idea to disable them and use the securemodelines
 " script, <http://www.vim.org/scripts/script.php?script_id=1876>.
 " 歴史的にモードラインはセキュリティ上の脆弱性になっていたので、
 " オフにして代わりに上記のsecuremodelinesスクリプトを使うとよい。
 " set nomodeline
 
 
 "------------------------------------------------------------
 " Usability options {{{1
 "
 " These are options that users frequently set in their .vimrc. Some of them
 " change Vim's behaviour in ways which deviate from the true Vi way, but
 " which are considered to add usability. Which, if any, of these options to
 " use is very much a personal preference, but they are harmless.
 
 " Use case insensitive search, except when using capital letters
 " 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
 " 混在しているときは区別する
 set ignorecase
 set smartcase
 
 " Allow backspacing over autoindent, line breaks and start of insert action
 " オートインデント、改行、インサートモード開始直後にバックスペースキーで
 " 削除できるようにする。
 set backspace=indent,eol,start
 
 " When opening a new line and no filetype-specific indenting is enabled, keep
 " the same indent as the line you're currently on. Useful for READMEs, etc.
 " オートインデント
 set autoindent
 
 " Stop certain movements from always going to the first character of a line.
 " While this behaviour deviates from that of Vi, it does what most users
 " coming from other editors would expect.
 " 移動コマンドを使ったとき、行頭に移動しない
 set nostartofline
 
 " Display the cursor position on the last line of the screen or in the status
 " line of a window
 " 画面最下行にルーラーを表示する
 set ruler
 
 " Always display the status line, even if only one window is displayed
 " ステータスラインを常に表示する
 set laststatus=2
 
 " Instead of failing a command because of unsaved changes, instead raise a
 " dialogue asking if you wish to save changed files.
 " バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
 " かどうか確認を求める
 set confirm
 
 " Use visual bell instead of beeping when doing something wrong
 " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
 set visualbell
 
 " And reset the terminal code for the visual bell.  If visualbell is set, and
 " this line is also included, vim will neither flash nor beep.  If visualbell
 " is unset, this does nothing.
 " そしてビジュアルベルも無効化する
 set t_vb=
 
 " Enable use of the mouse for all modes
 " 全モードでマウスを有効化
 set mouse=a
 
 " Set the command window height to 2 lines, to avoid many cases of having to
 " "press <Enter> to continue"
 " コマンドラインの高さを2行に
 set cmdheight=2
 
 " Display line numbers on the left
 " 行番号を表示
 set number
 
 " Quickly time out on keycodes, but never time out on mappings
 " キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
 set notimeout ttimeout ttimeoutlen=200
 
 " Use <F11> to toggle between 'paste' and 'nopaste'
 " <F11>キーで'paste'と'nopaste'を切り替える
 set pastetoggle=<F11>
 
 
 "------------------------------------------------------------
 " Indentation options {{{1
 " インデント関連のオプション {{{1
 "
 " Indentation settings according to personal preference.
 
 " Indentation settings for using 2 spaces instead of tabs.
 " Do not change 'tabstop' from its default value of 8 with this setup.
 " タブ文字の代わりにスペース2個を使う場合の設定。
 " この場合、'tabstop'はデフォルトの8から変えない。
 " set shiftwidth=2
 " set softtabstop=2
 " set expandtab
 
 " Indentation settings for using hard tabs for indent. Display tabs as
 " two characters wide.
 " インデントにハードタブを使う場合の設定。
 " タブ文字を2文字分の幅で表示する。
 "set shiftwidth=2
 "set tabstop=2
 
 
 "------------------------------------------------------------
 " Mappings {{{1
 " マッピング
 "
 " Useful mappings
 
 " Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
 " which is the default
 " Yの動作をDやCと同じにする
 map Y y$
 
 " Map <C-L> (redraw screen) to also turn off search highlighting until the
 " next search
 " <C-L>で検索後の強調表示を解除する
 nnoremap <C-L> :nohl<CR><C-L>
 
 
 "------------------------------------------------------------


helptags ~/.vim/doc

" zen-coding key bind
let g:user_zen_expandabbr_key = '<C-e>'

" コメントアウトの色設定
hi Comment ctermfg=2



"--------------------------------------------------------------------------
"" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#rc(expand('~/.vim/bundle/'))

  filetype plugin indent on     " Required!

  " Installation check.
  " if neobundle#exists_not_installed_bundles()
  "   echomsg 'Not installed bundles : ' .
  "           \ string(neobundle#get_not_installed_bundle_names())
  "             echomsg 'Please execute ":NeoBundleInstall" command.'
  "               "finish
  "               endif

  "GitHubリポジトリにあるプラグインを利用場合
  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'surround.vim'
  NeoBundle 'kien/ctrlp.vim'
  NeoBundle 'digitaltoad/vim-jade'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'Shougo/neocomplcache'
  NeoBundle 'teramako/jscomplete-vim'
  NeoBundle 'myhere/vim-nodejs-complete'

" end of neobundle
"--------------------------------------------------------------------------

" Syntax Check
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['ruby', 'javascript'],
                           \ 'passive_filetypes': [] }



" JavaScript input support
autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
" complcache
NeoBundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
      return neocomplcache#smart_close_popup() . "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()

  
if !exists('g:neocomplcache_omni_functions')
      let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'

let g:node_usejscomplete = 1

" autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS

let g:neocomplcache_source_rank = {
  \ 'jscomplete' : 500,
  \ }

" dom も含める
let g:jscomplete_use = ['dom']


" はりつけ時に勝手にコメントアウトが付与されるのを防止
autocmd FileType * set formatoptions-=ro


" Popup補完メニューの色設定
highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=12 guibg=SlateBlue
highlight PmenuSbar ctermbg=0 guibg=#404040
"highlight PmenuThumb ctermbg=0 guibg=Red









