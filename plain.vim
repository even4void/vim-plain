scriptencoding=utf-8

if exists('g:colors_name')
    syntax reset
    syntax on
endif


let g:colors_name='plain'

let s:italics = (&t_ZH !=# '' && &t_ZH !=# '[7m') || has('gui_running') || has('nvim')

let s:black           = { 'gui': '#222222', 'cterm': '0'   }
let s:medium_gray     = { 'gui': '#767676', 'cterm': '243' }
let s:white           = { 'gui': '#F1F1F1', 'cterm': '15'  }
let s:light_black     = { 'gui': '#424242', 'cterm': '8'   }
let s:lighter_black   = { 'gui': '#545454', 'cterm': '240' }
let s:subtle_black    = { 'gui': '#303030', 'cterm': '236' }
let s:light_gray      = { 'gui': '#999999', 'cterm': '249' }
let s:lighter_gray    = { 'gui': '#CCCCCC', 'cterm': '251' }
let s:lightest_gray   = { 'gui': '#E5E5E5', 'cterm': '251' }
let s:dark_red        = { 'gui': '#a54242', 'cterm': '1'   }
let s:light_red       = { 'gui': '#cc6666', 'cterm': '9'   }
let s:dark_blue       = { 'gui': '#5f819d', 'cterm': '4'   }
let s:light_blue      = { 'gui': '#81a2be', 'cterm': '12'  }
let s:dark_cyan       = { 'gui': '#5e8d87', 'cterm': '6'   }
let s:light_cyan      = { 'gui': '#8abeb7', 'cterm': '14'  }
let s:dark_green      = { 'gui': '#8c9440', 'cterm': '2'   }
let s:light_green     = { 'gui': '#b5bd68', 'cterm': '10'  }
let s:dark_purple     = { 'gui': '#85678f', 'cterm': '5'   }
let s:light_purple    = { 'gui': '#b294bb', 'cterm': '13'  }
let s:light_yellow    = { 'gui': '#f0c674', 'cterm': '11'  }
let s:dark_yellow     = { 'gui': '#de935f', 'cterm': '3'   }
let s:handle          = { 'gui': '#8888cc', 'cterm': '4'   }
let s:warn            = { 'gui': '#ffffcc', 'cterm': '11'   }
let s:err             = { 'gui': '#ffe6cc', 'cterm': '9'   }

if &background ==# 'dark'
  let s:bg               = s:black
  let s:bg_subtle        = s:light_black
  let s:bg_very_subtle   = s:subtle_black
  let s:norm             = s:lighter_gray
  let s:norm_subtle      = s:light_gray
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:light_purple
  let s:cyan             = s:light_cyan
  let s:green            = s:light_green
  let s:red              = s:light_red
  let s:yellow           = s:light_yellow
  let s:visual           = s:lighter_black
  let s:cursor_line      = s:subtle_black
  let s:constant         = s:light_blue
  let s:comment          = s:light_gray
  " let s:comment          = s:handle
  let s:selection        = s:dark_yellow
  let s:selection_fg     = s:black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:light_red
else
  let s:bg               = s:white
  let s:bg_subtle        = s:lighter_gray
  let s:bg_very_subtle   = s:light_gray
  let s:norm             = s:light_black
  let s:norm_subtle      = s:lighter_black
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:dark_purple
  let s:cyan             = s:dark_cyan
  let s:green            = s:dark_green
  let s:red              = s:dark_red
  let s:yellow           = s:dark_yellow
  " let s:visual           = s:light_blue
  let s:visual           = s:lightest_gray
  let s:cursor_line      = s:lightest_gray
  let s:constant         = s:dark_blue
  let s:comment          = s:light_gray
  " let s:comment          = s:handle
  let s:selection        = s:light_yellow
  let s:selection_fg     = s:light_black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:dark_red
endif

unlet s:black
unlet s:medium_gray
unlet s:white
unlet s:light_black
unlet s:lighter_black
unlet s:subtle_black
unlet s:light_gray
unlet s:lighter_gray
unlet s:lightest_gray
unlet s:dark_red
unlet s:light_red
unlet s:dark_blue
unlet s:light_blue
unlet s:dark_cyan
unlet s:light_cyan
unlet s:dark_green
unlet s:light_green
unlet s:dark_purple
unlet s:light_purple
unlet s:light_yellow
unlet s:dark_yellow

function! s:h(group, style)
  execute 'highlight' a:group
    \ 'guifg='   (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
    \ 'guibg='   (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
    \ 'guisp='   (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
    \ 'gui='     (has_key(a:style, 'gui')   ? a:style.gui      : 'NONE')
    \ 'ctermfg=' (has_key(a:style, 'fg')    ? a:style.fg.cterm : 'NONE')
    \ 'ctermbg=' (has_key(a:style, 'bg')    ? a:style.bg.cterm : 'NONE')
    \ 'cterm='   (has_key(a:style, 'cterm') ? a:style.cterm    : 'NONE')
endfunction

if has('gui')
    call s:h('Normal',    {'fg': s:norm, 'bg': s:bg})
    call s:h('Cursor',    {'fg': s:bg, 'bg': s:norm})
else
    call s:h('Normal',    {'fg': s:norm})
    hi! link Cursor       Identifier
endif

hi! link Identifier       Normal
hi! link Function         Identifier
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link SpecialKey       Special
hi! link Debug            Special
hi! link VertSplit        Normal
hi! link PreProc          Normal
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h('Noise',         {'fg': s:norm_subtle, 'gui': 'NONE'})
hi! link Operator         Noise
hi! link LineNr           NonText
hi! link CursorLineNr     Statement
hi! link FoldColumn       LineNr
hi! link SignColumn       LineNr

call s:h('Comment',       {'fg': s:comment, 'gui': 'italic'})

call s:h('Constant',      {'fg': s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant
hi! link Directory        Constant
hi! link Title            Constant

call s:h('Statement',     {'fg': s:norm, 'gui': 'bold'})
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h('ErrorMsg',      {'fg': s:error})
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
call s:h('WarningMsg',    {'fg': s:warning})
call s:h('MoreMsg',       {'fg': s:norm_subtle, 'cterm': 'bold', 'gui': 'bold'})
hi! link ModeMsg          MoreMsg

call s:h('NonText',       {'fg': s:norm_very_subtle})
hi! link Folded           NonText
hi! link qfLineNr         NonText

call s:h('Search',        {'bg': s:selection, 'fg': s:selection_fg})
call s:h('IncSearch',     {'bg': s:selection, 'fg': s:selection_fg, 'gui': 'bold'})

" call s:h('Visual',        {'bg': s:visual, 'cterm': 'reverse'})
call s:h('Visual',        {'bg': s:bg, 'cterm': 'reverse', 'gui': 'reverse'})
call s:h('VisualNOS',     {'bg': s:bg_subtle})

call s:h('Ignore',        {'fg': s:bg})

call s:h('DiffAdd',       {'fg': s:green})
call s:h('DiffDelete',    {'fg': s:red})
call s:h('DiffChange',    {'fg': s:yellow})
call s:h('DiffText',      {'fg': s:constant})

if has('gui_running')
  call s:h('SpellBad',    {'gui': 'underline', 'sp': s:red})
  call s:h('SpellCap',    {'gui': 'undercurl', 'sp': s:ok})
  call s:h('SpellRare',   {'gui': 'undercurl', 'sp': s:error})
  call s:h('SpellLocal',  {'gui': 'undercurl', 'sp': s:ok})
else
  call s:h('SpellBad',    {'cterm': 'underline', 'fg': s:red})
  call s:h('SpellCap',    {'cterm': 'underline', 'fg': s:ok})
  call s:h('SpellRare',   {'cterm': 'underline', 'fg': s:error})
  call s:h('SpellLocal',  {'cterm': 'underline', 'fg': s:ok})
endif

hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String

call s:h('StatusLine',        {'fg': s:norm_very_subtle})
call s:h('StatusLineNC',      {'fg': s:bg_subtle})
call s:h('WildMenu',          {'gui': 'underline,bold', 'fg': s:norm})

call s:h('StatusLineOk',      {'gui': 'underline', 'fg': s:ok})
call s:h('StatusLineError',   {'gui': 'underline', 'fg': s:error})
call s:h('StatusLineWarning', {'gui': 'underline', 'fg': s:warning})

call s:h('Pmenu',         {'fg': s:norm, 'bg': s:cursor_line})
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
call s:h('PmenuSel',      {'fg': s:norm, 'bg': s:cursor_line, 'gui': 'bold'})

hi! link TabLine          Normal
hi! link TabLineSel       Keyword
hi! link TabLineFill      Normal

" call s:h('CursorLine',    {'cterm': 'NONE'})
call s:h('CursorLine',   {'bg': s:cursor_line})
call s:h('ColorColumn',   {'bg': s:cursor_line})

call s:h('MatchParen',    {'bg': s:bg_subtle, 'fg': s:norm})

hi! link htmlH1 Normal
hi! link htmlH2 Normal
hi! link htmlH3 Normal
hi! link htmlH4 Normal
hi! link htmlH5 Normal
hi! link htmlH6 Normal

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd

hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag

hi link markdownH1 Statement
hi link markdownH2 Statement
hi link markdownH3 Statement
hi link markdownH4 Statement
hi link markdownH5 Statement
hi link markdownH6 Statement
hi link markdownListMarker Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Constant

hi link yamlBlockMappingKey Statement
hi link pythonOperator Statement
hi link sqlStatement Statement
hi link sqlKeyword Keyword

call s:h('DiagnosticError ', {'fg': s:ok})
call s:h('DiagnosticWarn ', {'fg': s:ok})
call s:h('DiagnosticInfo ', {'fg': s:ok})
call s:h('DiagnosticHint ', {'fg': s:ok})
call s:h('DiagnosticUnderlineError', {'bg': s:err, 'fg': s:error, 'gui': 'NONE'})
call s:h('DiagnosticUnderlineWarn', {'bg': s:warn, 'gui': 'NONE'})
call s:h('DiagnosticUnderlineInfo', {'gui': 'undercurl', 'sp': s:comment})
call s:h('DiagnosticUnderlineHint', {'gui': 'underline', 'sp': s:comment})
call s:h('DiagnosticUnnecessary', {'gui': 'underline', 'sp': s:comment})
hi link LspCodeLens Comment
hi link DiagnosticFloatingError Normal
hi link DiagnosticFloatingWarn Normal
hi link DiagnosticFloatingInfo Normal
hi link DiagnosticFloatingHint Normal
hi link LightBulbVirtualText Comment

call s:h('Todo ', {'gui': 'bold', 'cterm': 'bold,underline'})

" hi link MiniJump Search
hi link gitcommitOverflow WarningMsg

call s:h('healthSuccess', {'fg': s:ok})
call s:h('healthError',   {'fg': s:error})
call s:h('healthWarning', {'fg': s:warning})

call s:h('RedrawDebugClear',      {'fg': s:warning})
call s:h('RedrawDebugComposed',   {'fg': s:ok})
call s:h('RedrawDebugNormal',     {'cterm': 'NONE'})
call s:h('RedrawDebugRecompose',  {'fg': s:error})
call s:h('debugBreakpoint',       {'fg': s:error})
call s:h('debugPC',               {'cterm': 'NONE'})
