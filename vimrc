set ts=2            
set autoindent
set lbr
set showcmd
set nocompatible
set backspace=indent,eol,start
set history=50
set showtabline=2
set nobackup
set ruler 			     " show cursor
set nohidden
set nowrap     
set number
set shiftwidth=2         " number of spaces to use for autoindenting
set softtabstop=2
set shiftround           " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch            " set show matching parenthesis
set ignorecase           " ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase,
                         " case-sensitive otherwise
set smarttab             " insert tabs on the start of a line according to
                         " shiftwidth, not tabstop
set expandtab            " spaces instead tabs
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set showcmd              " show incomplete cmds down the bottom
set showmode             " show current mode down the bottom
set incsearch            " find the next match as we type the search
set hlsearch             " hilight searches by default
set ttyfast              " More characters will be sent to the screen for redrawing
set scrolloff=3          " Keep this number of lines below and above cursor

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

" remember some stuff after quiting vim:
" marks, registers, searches, buffer list
set viminfo='20,<50,s10,h,%

" C indent style
set cindent
set modeline
syntax on

set sessionoptions=curdir,buffers,tabpages

""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Pathogen plugin
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" Format the statusline
"filename
set statusline=%<%F%h\ \ \|\ \ %{strftime(\"%c\",getftime(expand(\"%:p\")))}\ \ \|\ \  

"displar a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'\['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%1*
set statusline+=%h      "help file flag
"set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%w

set statusline+=%#warningmsg#
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=line:\ %l/%L   "cursor line/total lines
set statusline+=\ \ \|\ col:\ %c     "cursor column
set statusline+=\ \|\ %P    "percent through file
set laststatus=2

" Recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"""""""""""""""""""""""""""""""""""""""""""""""""""""""" tags
set tags=./.vim/tags
set tags+=~/.vim/tags/cpp
let g:easytags_dynamic_files = 0
let g:easytags_file = './.vim/tags'
let g:easytags_always_enabled = 0
let g:easytags_include_members = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""" OmniCppComplete
set nocp
filetype plugin on
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

""""""""""""""""""""""""""""""""""""""""" Tabs
function MyTabLine()
  let tabline = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let tabline .= '%#TabLineSel#'
    else
      let tabline .= '%#TabLine#'
    endif
    let tabline .= '%' . (i + 1) . 'T'
    let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
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
  for i in range(len(buflist))
    if getbufvar(buflist[i], "&modified")
      let label = '▶ ' . label
      break
    endif
  endfor
  return label
endfunction

function MyGuiTabLabel()
    return '%{MyTabLabel(' . tabpagenr() . ')}'
endfunction

set tabline=%!MyTabLine()
set guitablabel=%!MyGuiTabLabel()

"""""""" ShowMarks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1

""""""""""""""""""""""""""""""""""""""""" NERD tree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeChDirMode=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowHidden=1
let g:NERDTreeKeepTreeInNewTab=1

"""""""""""""""""""""""""""""""""""""""" TagList
let Tlist_Auto_Open = 1
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 0
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 42
let Tlist_Use_SingleClick = 1
let Tlist_Display_Tag_Scope = 0
let Tlist_Compact_Format = 1
let Tlist_Display_Prototype = 0
let Tlist_Enable_Fold_Column = 0
let Tlist_Show_One_File = 1
"exe bufwinnr('__TAG') . 'wincmd w' | setlocal statusline='testing' | wincmd p 

if has("autocmd")
  au FileType qf
    \ if &buftype == "quickfix" |
    \     setlocal statusline=%2*%-3.3n%0* |
    \     setlocal statusline+=\ \[Compiler\ Messages\] |
    \     setlocal statusline+=%=%2*\ %<%P |
    \ endif

  fun! <SID>FixMiniBufExplorerTitle()
    if "-MiniBufExplorer-" == bufname("%")
      setlocal statusline=%2*%-3.3n\ %0*\[MiniBufExplorer\]
    elseif "__Tag_List__" == bufname("%")
      setlocal statusline=%0*
      setlocal statusline+=\[TagList\]
      setlocal statusline+=%=\ %<%P
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
if filereadable(expand("./.vim/vimrc"))
  source ./.vim/vimrc
endif

