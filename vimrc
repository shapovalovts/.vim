"
""""""""""""""""""""""""""""""""""""""""" Generic VIM settings
set ts=2
set autoindent
set autoread
set lbr
set showcmd
set nocompatible
set backspace=indent,eol,start
set history=50
set showtabline=2
set nobackup
set ruler                " show cursor
set nohidden
set nowrap
set number
set shiftwidth=2         " number of spaces to use for autoindenting
set softtabstop=2
set shiftround           " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch            " set show matching parenthesis
set ignorecase           " ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab             " insert tabs on the start of a line according to shiftwidth, not tabstop
set expandtab            " spaces instead tabs
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set showcmd              " show incomplete cmds down the bottom
set showmode             " show current mode down the bottom
set incsearch            " find the next match as we type the search
set hlsearch             " hilight searches by default
set ttyfast              " more characters will be sent to the screen for redrawing
set scrolloff=3          " keep this number of lines below and above cursor
set clipboard=unnamed    " all operations work with the OS clipboard
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " highlight problematic whitespace
set viminfo='20,<50,s10,h,%                   " remember some stuff after quiting vim: marks, registers, searches, buffer list
set sessionoptions=curdir,buffers,tabpages
set wildignore=*.swp,*.bak,*.pyc,*.class
set cindent
set modeline
"set autochdir                                 " NOTE: disabled, otherwise savesassion sometimes doesn't work!
syntax on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
filetype on                    " required on MacOSX only
filetype plugin off            " required by Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vcscommand.vim'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'xolox/vim-session'
Bundle 'kien/ctrlp.vim'
Bundle 'OmniCppComplete'
Bundle 'majutsushi/tagbar'
Bundle 'cpp.vim'
Bundle 'c.vim'
Bundle 'a.vim'
Bundle 'SearchComplete'
Bundle 'ShowMarks'
Bundle 'nathanaelkane/vim-indent-guides.git'

filetype plugin indent on      " required by Vundle

""""""""""""""""""""""""""""""""""""""""""""""" Syntastic
let g:syntastic_auto_jump=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_enable_signs=0
let g:syntastic_echo_current_error=0
let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons = 0
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=0
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_c_no_include_search = 1
let g:syntastic_cpp_check_header = 0
let g:syntastic_c_check_header = 0
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_cpp_auto_refresh_includes = 0
let g:syntastic_c_auto_refresh_includes = 0
let g:syntastic_stl_format = '%E{ line: %fe | col: %e }'
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['puppet'] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" Format the statusline

function! GitInfo()
  let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
  if branch != ''
    return 'b: ' . substitute(branch, '\n', '', 'g')
  endif
  return ''
endfun

function! SVNInfo()
  let rev = system("svn info 2> /dev/null | grep -i revision | awk '{print $2}'")
  let branch = system("svn info | grep URL | awk '{print $2}' | awk  -F '/' '{print $5}'")
  let modified = system("svn stat -q")
  if rev != ''
    if branch != ''
      return 'b: ' . substitute(branch, '\n', '', 'g') . ' | r: ' . substitute(rev, '\n', '', 'g')
    endif
  endif
  return ''
endfun

set statusline+=\ \ %<%F\ \ 

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'\['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%1*
set statusline+=%h      "help file flag
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%w

set statusline+=%#warningmsg#
set statusline+=%*

set statusline+=\ %#error#
set statusline+=%{&paste?'paste':''}
set statusline+=%*

set statusline+=\ %#error#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=                     "left/right separator
"set statusline+=%{GitInfo()}
"set statusline+=%{SVNInfo()}
set statusline+=\ \ \|\ line:\ %l/%L   "cursor line/total lines
set statusline+=\ \ \|\ col:\ %c       "cursor column
set statusline+=\ \|\ %P               "percent through file
set laststatus=2

" Recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" tags
set tags=./.vim/tags
set tags+=~/.vim/tags/cpp

""""""""""""""""""""""""""""""""""""""""""""""""""""""" OmniCppComplete
set nocp
"filetype plugin on
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1      " autocomplete after .
let OmniCpp_MayCompleteArrow = 1    " autocomplete after ->
let OmniCpp_MayCompleteScope = 1    " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"""""""""""""""""""""""""""""""""""""""""""""""NeoComplCache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

""""""""""""""""""""""""""""""""""""""""" Tabs
function MyTabLine()
  let tabline = '%#TabLine#'
  let tabline .= '     '
  for i in range(tabpagenr('$'))
    let buflist = tabpagebuflist(i + 1)
    if i + 1 == tabpagenr()
      let tabline .= '%#TabLineSel#'
      for b in range(len(buflist))
        if getbufvar(buflist[b], "&modified")
          let tabline .= '%#TabLineModifiedSel#'
          break
        endif
      endfor
    else
      let tabline .= '%#TabLine#'
      for b in range(len(buflist))
        if getbufvar(buflist[b], "&modified")
          let tabline .= '%#TabLineModified#'
          break
        endif
      endfor
    endif
    let tabline .= '%' . (i + 1) . 'T'
    let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} '
    if i + 1 == tabpagenr()
      let tabline .= '%#TabLineSel#'
    else
      let tabline .= '%#TabLine#'
    endif
    if i + 1 != tabpagenr() && i+2 != tabpagenr()
      let tabline .= '|'
    endif
  endfor
  let tabline .= '%#TabLineFill#%T'
  if tabpagenr('$') > 1
    let tabline .= '%=%#TabLine#%999XX'
  endif
  return tabline
endfunction

function MyTabLabel(n)
  let label = ''
  let buflist = tabpagebuflist(a:n)
  let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')
  if label == ''
      let label = '[No Name]'
  endif
  return label
endfunction

function MyGuiTabLabel()
    return '%{MyTabLabel(' . tabpagenr() . ')}'
endfunction

set tabline=%!MyTabLine()
set guitablabel=%!MyGuiTabLabel()

""""""""""""""""""""""""""""""""""""""""" CtrlP
set wildignore+=*/tmp/*,*.o,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 15
let g:ctrlp_switch_buffer = 2
let g:ctrlp_reuse_window = 'NERD_tree'
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

""""""""""""""""""""""""""""""""""""""""" EasyMotion
let g:EasyMotion_leader_key = ','

""""""""""""""""""""""""""""""""""""""""" ShowMarks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
let showmarks_ignore_type="hqrm"
let g:showmarks_textlower=" "

""""""""""""""""""""""""""""""""""""""""" NERD tree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeChDirMode=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeKeepTreeInNewTab=1

"""""""""""""""""""""""""""""""""""""""" TagBar
let g:tagbar_width = 60
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▷', '◢']

if has("autocmd")
  au FileType c,cpp nested :TagbarOpen

  au FileType qf
    \ if &buftype == "quickfix" |
    \     setlocal statusline=%2*%-3.3n%0* |
    \     setlocal statusline+=\ \[Compiler\ Messages\] |
    \     setlocal statusline+=%=%2*\ %<%P |
    \ endif

  fun! <SID>FixMiniBufExplorerTitle()
    if "-MiniBufExplorer-" == bufname("%")
      setlocal statusline=%2*%-3.3n\ %0*\[MiniBufExplorer\]
    elseif "__Tagbar__" == bufname("%")
      setlocal statusline=%0*
      setlocal statusline+=Tagbar
      setlocal statusline+=%=\ %<%P
      setlocal cursorline!
    endif
  endfun

  au BufWinEnter *
    \ let oldwinnr=winnr() |
    \ windo call <SID>FixMiniBufExplorerTitle() |
    \ exec oldwinnr . " wincmd w" 

endif

"""""""""""""""""""""""""""""""""""""""" Restore last session
let g:session_autosave = 1
let g:session_autoload = 1
let g:session_default_to_last = 1
let g:session_directory = ".vim"

au VimLeavePre * SaveSession()

""""""""""""""""""""""""""""""""""""""""" Colors
set t_Co=256
colo taras256

""""""""""""""""""""""""""""""""""""""""" Include keys map
source ~/.vim/keys.vim

" Use local vimrc if available 
if filereadable(expand("./.vim/vimrc-custom"))
  source ./.vim/vimrc-custom
endif

