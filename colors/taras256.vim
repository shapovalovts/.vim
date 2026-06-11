" Vim colour scheme
" Maintainer: Taras Shapovalov
" 256 color environments
"
" Palette (light background):
"   keywords/control : black        ctermfg=0   guifg=Black
"   operators        : dark red    ctermfg=88  guifg=#8B0000
"   types            : blue       ctermfg=25  guifg=#1565C0
"   functions        : teal       ctermfg=30  guifg=#006064
"   strings          : sienna     ctermfg=130 guifg=#7B3F00
"   numbers/booleans : dark green ctermfg=28  guifg=#2E7D32
"   preprocessor     : purple     ctermfg=54  guifg=#6A1B9A
"   special          : violet     ctermfg=90  guifg=#7B1FA2
"   identifiers      : brown      ctermfg=94  guifg=#5D4037
"   comments         : gray       ctermfg=241 guifg=#616161

hi clear
set background=light
if exists("syntax_on")
  syntax reset
endif
set t_Co=256

let g:colors_name = 'taras256'

" ── UI ──────────────────────────────────────────────────────────────────────
hi Normal        gui=none guifg=Black guibg=White ctermfg=0 ctermbg=255
hi CursorLine    cterm=none ctermbg=137 guibg=#C4956A
hi Cursor        gui=reverse cterm=reverse
hi CursorLineNr  ctermbg=15 ctermfg=8 cterm=none term=bold
hi CtrlPLinePre  ctermbg=7 cterm=none term=bold
hi LineNr        gui=bold guifg=#828c95 guibg=#bbbbbb ctermfg=102 ctermbg=8
hi NonText       gui=bold guifg=DarkGray guibg=#bbbbbb ctermfg=7 ctermbg=15
hi SpecialKey    guifg=#d0b0b0 guibg=#f0f0f0 gui=none
hi Title         term=bold ctermfg=25 guifg=#1565C0
hi Visual        term=reverse ctermbg=7 guifg=White guibg=#829db9
hi Ignore        ctermfg=bg guifg=bg
hi Directory     gui=bold guifg=#1565C0 ctermfg=25 cterm=bold

hi FoldColumn    guifg=Black guibg=#979797 ctermbg=7 ctermfg=4
hi Folded        guifg=Black guibg=#bbbbbb ctermbg=7 ctermfg=244

hi VertSplit     gui=bold guifg=#9ca6af guibg=Black cterm=bold ctermfg=8 ctermbg=8
hi Wildmenu      guifg=Black guibg=White ctermfg=0 ctermbg=11
hi Pmenu         guibg=Grey65 guifg=Black gui=none ctermfg=0 ctermbg=250
hi PmenuSbar     guibg=Grey50 guifg=fg gui=none ctermbg=214
hi PmenuSel      guibg=Yellow guifg=Black gui=none ctermbg=214 ctermfg=16
hi PmenuThumb    guibg=Grey75 guifg=fg gui=none cterm=reverse

hi IncSearch     gui=none guifg=White guibg=Black cterm=reverse,underline
hi Search        gui=none guifg=Black guibg=Yellow ctermbg=11

hi MoreMsg       gui=bold guifg=ForestGreen
hi Question      gui=bold guifg=ForestGreen
hi WarningMsg    gui=bold guifg=Red

hi VisualDelimeter       guifg=Gray ctermfg=7  ctermbg=8
hi VisualDelimeterWhite  guifg=Gray ctermfg=15 ctermbg=8
hi VisualDelimeterBlock  guifg=Gray ctermfg=15 ctermbg=15

" ── Status / tab line ───────────────────────────────────────────────────────
hi StatusLine         guifg=#000bff guibg=#ddddff ctermfg=8  ctermbg=188
hi StatusLineNC       guifg=#829db9 guibg=Black   ctermfg=8  ctermbg=8
au InsertEnter * hi StatusLine        guifg=#00bbff guibg=#dd0dff ctermfg=9  ctermbg=188
au InsertLeave * hi StatusLine        guifg=#000bff guibg=#ddddff ctermfg=8  ctermbg=188
au InsertEnter * hi VisualDelimeterWhite guifg=#00bbff guibg=#dd0dff ctermfg=188 ctermbg=9
au InsertLeave * hi VisualDelimeterWhite guifg=#000bff guibg=#ddddff ctermfg=188 ctermbg=8
hi User1              gui=NONE guifg=#ff0000 cterm=bold ctermfg=15 ctermbg=9

hi TabLineSel         guifg=#000bff guibg=#ddddff ctermfg=16 ctermbg=15 cterm=bold
hi TabLine            guifg=#000bff guibg=#ddddff ctermfg=7  ctermbg=8  cterm=none
hi TabLineFill        guifg=#000bff guibg=#ddddff ctermfg=15 ctermbg=8  cterm=none
hi TabLineModified    guifg=#000bff guibg=#ddddff ctermfg=9  ctermbg=8  cterm=none
hi TabLineModifiedSel guifg=#000bff guibg=#ddddff ctermfg=9  ctermbg=15 cterm=bold

" ── Syntax base groups ──────────────────────────────────────────────────────
hi Comment    gui=italic guifg=#616161 ctermfg=241

hi Constant   gui=none guifg=#2E7D32 ctermfg=22
hi String     gui=none guifg=#7B3F00 ctermfg=130
hi Number     gui=bold guifg=#2E7D32 ctermfg=28
hi Boolean    gui=bold guifg=#2E7D32 ctermfg=28

hi Identifier gui=none   guifg=#5D4037 ctermfg=94
hi Function   gui=bold   guifg=#006064 ctermfg=30

hi Statement  gui=bold   guifg=Black ctermfg=0
hi Label      gui=bold   guifg=Black ctermfg=0
hi Operator   gui=none   guifg=#8B0000 ctermfg=88

hi PreProc    gui=none   guifg=#6A1B9A ctermfg=54

hi Type       gui=none   guifg=#1565C0 ctermfg=25

hi Special    gui=bold   guifg=#7B1FA2 ctermfg=90
hi Delimiter  gui=none   guifg=#424242 ctermfg=240

hi Underlined gui=underline guifg=#1565C0 ctermfg=25 cterm=underline

hi Error      gui=none guifg=White guibg=Red ctermfg=15 ctermbg=160
hi Todo       gui=bold guifg=Black guibg=Yellow ctermfg=16 ctermbg=220

" ── C++ ─────────────────────────────────────────────────────────────────────
hi cComment     gui=italic guifg=#616161 ctermfg=241
hi cCommentL    gui=italic guifg=#616161 ctermfg=241
hi cReturnKeyword gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cConditional  gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cRepeat       gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cStatement    gui=bold guifg=Black    ctermfg=0
hi cStorageClass gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cType         gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cStructure    gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cOperator     gui=none guifg=#8B0000  ctermfg=88
hi cppStatement  gui=bold guifg=Black    ctermfg=0
hi cppNamespace  gui=bold guifg=Black    ctermfg=0
hi cppType       gui=bold guifg=#00008B  ctermfg=18 cterm=bold
hi cCustomMethod   gui=none guifg=Black   ctermfg=0
hi cCustomMember   gui=none guifg=Black   ctermfg=0
hi cppSTLfunction  gui=none guifg=#00008B ctermfg=18
hi cppSTLtype      gui=none guifg=#00008B ctermfg=18
hi cppSTLnamespace gui=none guifg=#00008B ctermfg=18
hi cppSTLconstant  gui=none guifg=#2E7D32 ctermfg=28
hi cppSTLiterator  gui=none guifg=#2E7D32 ctermfg=28
hi cppSTLexception gui=none guifg=#2E7D32 ctermfg=28
hi cppSTLios       gui=none guifg=#2E7D32 ctermfg=28
hi cppSTLbool      gui=none guifg=#00008B ctermfg=18

" ── Python ──────────────────────────────────────────────────────────────────
hi pythonSelf         gui=bold   guifg=#00008B ctermfg=18 cterm=bold
hi pythonStatement    gui=bold   guifg=#00008B ctermfg=18 cterm=bold
hi pythonFunction     gui=bold   guifg=#006064 ctermfg=30 cterm=bold
hi pythonRepeat       gui=bold   guifg=#00008B ctermfg=18 cterm=bold
hi pythonConditional  gui=bold   guifg=#00008B ctermfg=18 cterm=bold
hi pythonPreCondit    gui=none   guifg=#6A1B9A ctermfg=54
hi pythonException    gui=bold   guifg=#7B1FA2 ctermfg=90  cterm=bold
hi pythonOperator     gui=none   guifg=#8B0000 ctermfg=88
hi pythonDecorator    gui=none   guifg=#6A1B9A ctermfg=54
hi pythonDottedName   gui=none   guifg=#6A1B9A ctermfg=54
hi pythonDot          gui=none   guifg=#424242 ctermfg=240
hi pythonComment      gui=italic guifg=#616161 ctermfg=241
hi pythonCoding       gui=bold   guifg=#6A1B9A ctermfg=54
hi pythonString       gui=none   guifg=#7B3F00 ctermfg=130
hi pythonUniString    gui=none   guifg=#7B3F00 ctermfg=130
hi pythonRawString    gui=none   guifg=#7B3F00 ctermfg=130
hi pythonUniRawString gui=none   guifg=#7B3F00 ctermfg=130
hi pythonStrFormatting gui=bold  guifg=#5D4037 ctermfg=94
hi pythonStrFormat    gui=bold   guifg=#5D4037 ctermfg=94
hi pythonHexNumber    gui=bold   guifg=#2E7D32 ctermfg=28
hi pythonOctNumber    gui=bold   guifg=#2E7D32 ctermfg=28
hi pythonBinNumber    gui=bold   guifg=#2E7D32 ctermfg=28
hi pythonNumber       gui=bold   guifg=#2E7D32 ctermfg=28
hi pythonFloat        gui=bold   guifg=#2E7D32 ctermfg=28
hi pythonBuiltinType  gui=none   guifg=#1565C0 ctermfg=25
hi pythonBuiltinObj   gui=bold   guifg=#006064 ctermfg=30
hi pythonBuiltinFunc  gui=bold   guifg=#006064 ctermfg=30
hi pythonExClass      gui=bold   guifg=#7B1FA2 ctermfg=90

" ── Vim script ──────────────────────────────────────────────────────────────
hi vimCommand   gui=bold guifg=#1565C0 ctermfg=25 cterm=bold
hi vimStatement gui=bold guifg=#1565C0 ctermfg=25 cterm=bold

" ── HTML ────────────────────────────────────────────────────────────────────
hi htmlStatement           guifg=Black ctermfg=0
hi htmlBold                gui=bold
hi htmlItalic              gui=italic
hi htmlUnderline           gui=underline
hi htmlBoldItalic          gui=bold,italic
hi htmlBoldUnderline       gui=bold,underline
hi htmlBoldUnderlineItalic gui=bold,underline,italic
hi htmlUnderlineItalic     gui=underline,italic

" ── Doc / misc ──────────────────────────────────────────────────────────────
hi docSpecial guifg=#4169E1
hi docTrans   guibg=White guifg=White
hi docCode    guifg=#2E7D32

hi MyAdd    ctermfg=8
hi MyDelete ctermfg=8
hi MyChange ctermfg=8
