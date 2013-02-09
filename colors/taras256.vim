" Vim colour scheme
" Maintainer: Taras Shapovalov	
" 256 color environments

hi clear
set background=light
if exists("syntax_on")
  syntax reset
endif
  
let g:colors_name = 'taras256'

hi Normal gui=none guifg=Black guibg=White ctermfg=0 ctermbg=255
  
hi CursorLine cterm=none
hi Cursor guifg=White guibg=Black ctermfg=231 ctermbg=16 
hi CursorLineNr ctermbg=15 ctermfg=8 cterm=none term=bold
hi CtrlPLinePre ctermbg=7 cterm=none term=bold
hi LineNr gui=bold guifg=#828c95 guibg=#bbbbbb ctermfg=102 ctermbg=8
hi NonText gui=bold guifg=DarkGray guibg=#bbbbbb ctermfg=7 ctermbg=15
hi SpecialKey guifg=#d0b0b0 guibg=#f0f0f0 gui=none
hi Title term=bold ctermfg=5 guifg=RoyalBlue4
hi Visual term=reverse ctermbg=7 guifg=White guibg=#829db9
hi Ignore ctermfg=bg guifg=bg
  
hi FoldColumn guifg=Black guibg=#979797 ctermbg=7 ctermfg=4
hi Folded guifg=Black guibg=#bbbbbb  ctermbg=7 ctermfg=244

hi StatusLine guifg=#000bff guibg=#ddddff ctermfg=8 ctermbg=188
hi StatusLineNC guifg=#829db9 guibg=Black ctermfg=8 ctermbg=8
au InsertEnter * hi StatusLine guifg=#00bbff guibg=#dd0dff ctermfg=9 ctermbg=188
au InsertLeave * hi StatusLine guifg=#000bff guibg=#ddddff ctermfg=8 ctermbg=188
au InsertEnter * hi VisualDelimeterWhite guifg=#00bbff guibg=#dd0dff ctermfg=188 ctermbg=9
au InsertLeave * hi VisualDelimeterWhite guifg=#000bff guibg=#ddddff ctermfg=188 ctermbg=8
hi User1 gui=NONE guifg=#ff0000 cterm=bold ctermfg=15 ctermbg=9

hi TabLineSel guifg=#000bff guibg=#ddddff ctermfg=16 ctermbg=15 cterm=bold
hi TabLine    guifg=#000bff guibg=#ddddff ctermfg=7 ctermbg=8 cterm=none
hi TabLineFill guifg=#000bff guibg=#ddddff ctermfg=15 ctermbg=8 cterm=none
hi TabLineModified guifg=#000bff guibg=#ddddff ctermfg=9 ctermbg=8 cterm=none
hi TabLineModifiedSel guifg=#000bff guibg=#ddddff ctermfg=9 ctermbg=15 cterm=bold

hi VertSplit gui=bold guifg=#9ca6af guibg=Black cterm=bold ctermfg=8 ctermbg=8
hi Wildmenu guifg=Black guibg=White ctermfg=0 ctermbg=11
hi Pmenu guibg=Grey65 guifg=Black gui=none ctermfg=250 ctermbg=238
hi PmenuSbar guibg=Grey50 guifg=fg gui=none ctermbg=214
hi PmenuSel guibg=Yellow guifg=Black gui=none ctermbg=214 ctermfg=16
hi PmenuThumb guibg=Grey75 guifg=fg gui=none cterm=reverse
  
hi IncSearch gui=none guifg=White guibg=Black cterm=reverse,underline
hi Search gui=none guifg=Black guibg=Yellow ctermbg=11
  
hi MoreMsg gui=bold guifg=ForestGreen
hi Question gui=bold guifg=ForestGreen
hi WarningMsg gui=bold guifg=Red
hi VisualDelimeter guifg=Gray ctermfg=7 ctermbg=8
hi VisualDelimeterWhite guifg=Gray ctermfg=15 ctermbg=8
hi VisualDelimeterBlock guifg=Gray ctermfg=15 ctermbg=15
  
hi Comment gui=italic guifg=#9999cc ctermfg=248 
hi PreProc gui=none guifg=RoyalBlue3 ctermfg=114 cterm=bold
"hi Error gui=none guifg=White guibg=Red ctermfg=15 ctermbg=197
"hi Identifier gui=bold guifg=Sienna4 ctermfg=17 cterm=bold
"hi Special gui=bold guifg=RoyalBlue4 ctermfg=169 cterm=bold
"hi Todo gui=bold guifg=Black guibg=Yellow ctermbg=214
"hi Type gui=none guifg=RoyalBlue4 ctermfg=12 cterm=none
"hi Underlined gui=underline guifg=Blue cterm=bold
"hi Directory ctermfg=132 cterm=bold
"hi Delimiter ctermfg=8
"hi Function  gui=bold guifg=yellowgreen ctermfg=24
"hi cFunction  gui=bold guifg=yellowgreen ctermfg=24
"hi cIdentifier gui=bold guifg=Sienna4 ctermfg=17 cterm=bold
"hi cDefine gui=bold guifg=Sienna4 ctermfg=17 cterm=bold
"
"hi Boolean gui=bold guifg=ForestGreen  ctermfg=12
"hi Constant gui=none guifg=ForestGreen 
"hi Number guifg=ForestGreen ctermfg=138
"hi String gui=none guifg=Sienna4 ctermfg=203
"hi helpNote ctermbg=220 ctermfg=16
"  
"" C++:
"hi cppSTL gui=bold guifg=RoyalBlue2 ctermfg=12
"hi cppStatement ctermfg=111 cterm=bold
"hi cppOperator ctermfg=111 cterm=bold
"hi cppType gui=bold guifg=RoyalBlue4 ctermfg=12 cterm=bold
"hi cppAccess gui=bold guifg=RoyalBlue4 ctermfg=16 cterm=bold 
"hi cppExceptions gui=bold guifg=RoyalBlue4 ctermfg=100 cterm=bold 
"hi cppCast guifg=RoyalBlue1 ctermfg=111
"hi cCustomFunc  gui=bold guifg=yellowgreen ctermfg=24
"hi cCustomClass gui=reverse guifg=#001000 ctermfg=12 cterm=bold
"hi cUserLabel gui=bold guifg=RoyalBlue2 ctermfg=111 cterm=bold
""hi cppSigns gui=bold guifg=RoyalBlue4 ctermfg=22 
"hi cppBraces gui=bold guifg=RoyalBlue4 ctermfg=52 cterm=bold 
hi cppNamespace  gui=bold guifg=yellowgreen ctermfg=12 cterm=bold

" Python
hi pythonStatement gui=bold guifg=RoyalBlue2 ctermfg=12
hi pythonFunction guifg=RoyalBlue1 ctermfg=39 cterm=bold 
hi pythonRepeat gui=bold guifg=RoyalBlue3 ctermfg=111
hi pythonConditional guifg=RoyalBlue2 ctermfg=173 cterm=bold
hi pythonPreCondit guifg=RoyalBlue2 ctermfg=147 cterm=bold
hi pythonException gui=bold guifg=ForestGreen  ctermfg=13 cterm=bold
hi pythonOperator gui=bold guifg=ForestGreen  ctermfg=55 cterm=bold
hi pythonDecorator guifg=RoyalBlue1 ctermfg=110 cterm=bold
hi pythonDottedName guifg=RoyalBlue1 ctermfg=110 cterm=bold
hi pythonDot guifg=Sienna4 ctermfg=111
hi pythonComment guifg=Gray20 ctermfg=14
hi pythonCoding guifg=RoyalBlue1 ctermfg=110 cterm=bold
hi pythonString guifg=Sienna4 ctermfg=204
hi pythonUniString guifg=Sienna4 ctermfg=13
hi pythonRawString guifg=Sienna4 ctermfg=16
hi pythonUniRawString guifg=Sienna4 ctermfg=14
hi pythonStrFormatting guifg=Sienna4 ctermfg=15
hi pythonStrFormat guifg=Sienna4 ctermfg=13
hi pythonHexNumber gui=bold guifg=ForestGreen  ctermfg=13
hi pythonOctNumber gui=bold guifg=ForestGreen  ctermfg=13
hi pythonBinNumber gui=bold guifg=ForestGreen  ctermfg=13
hi pythonNumber gui=bold guifg=ForestGreen ctermfg=138
hi pythonFloat gui=bold guifg=ForestGreen ctermfg=138
hi pythonBuiltinObj guifg=RoyalBlue1 ctermfg=110 cterm=bold
hi pythonBuiltinFunc guifg=RoyalBlue1 ctermfg=110 cterm=bold
hi pythonExClass guifg=RoyalBlue1 ctermfg=110 cterm=bold

"hi Label gui=bold,underline guifg=ForestGreen ctermfg=15
"hi Statement gui=bold guifg=#bb88bb ctermfg=17 cterm=bold

hi htmlStatement ctermfg=132
hi htmlBold gui=bold
hi htmlItalic gui=italic
hi htmlUnderline gui=underline
hi htmlBoldItalic gui=bold,italic
hi htmlBoldUnderline gui=bold,underline
hi htmlBoldUnderlineItalic gui=bold,underline,italic
hi htmlUnderlineItalic gui=underline,italic
  
hi docSpecial guifg=RoyalBlue1
hi docTrans guibg=White guifg=White
hi docCode guifg=#00aa00
