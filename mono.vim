" vim:sw=8:ts=8
"
" act like t_Co=0 but use (256) color on just a few things
"

hi clear
if exists("syntax_on")
	syntax reset
        set notermguicolors
        let g:fzf_colors = {'prompt':  ['fg', 'Comment']}
endif

let colors_name = "mono"

hi ColorColumn		cterm=NONE		ctermfg=NONE	 ctermbg=252
hi Comment		cterm=italic		ctermfg=242
hi Constant		cterm=NONE		ctermfg=NONE
hi CursorLine		cterm=NONE		ctermfg=NONE
hi CursorLineNr		cterm=NONE		ctermfg=244
hi DiffAdd		cterm=NONE		ctermfg=10       ctermbg=NONE
hi DiffChange		cterm=NONE		ctermfg=3        ctermbg=NONE
hi DiffDelete		cterm=NONE		ctermfg=1        ctermbg=NONE
" hi DiffText		cterm=reverse		ctermfg=NONE
hi DiffText		cterm=bold ctermbg=3
hi Directory		cterm=bold		ctermfg=NONE
hi Error		cterm=NONE		ctermfg=NONE	 ctermbg=224
hi ErrorMsg		cterm=NONE		ctermfg=NONE	 ctermbg=224
hi ExtraWhitespace	cterm=reverse		ctermfg=185	 ctermbg=NONE
hi FoldColumn		cterm=standout		ctermfg=NONE
hi Folded		cterm=standout		ctermfg=NONE
hi Identifier		cterm=NONE		ctermfg=NONE
hi Ignore		cterm=bold		ctermfg=NONE
hi LineNr		cterm=NONE		ctermfg=248
hi MatchParen		cterm=bold		ctermfg=NONE	 ctermbg=185
hi ModeMsg		cterm=bold		ctermfg=NONE
hi MoreMsg		cterm=bold		ctermfg=NONE
hi NonText		cterm=bold		ctermfg=NONE
hi Pmenu		cterm=NONE		ctermfg=NONE	 ctermbg=253
hi PmenuSel		cterm=bold		ctermfg=NONE	 ctermbg=253
hi PreProc		cterm=NONE		ctermfg=NONE
hi Question		cterm=standout		ctermfg=NONE
hi SignColumn		cterm=NONE		ctermfg=NONE	 ctermbg=NONE
hi Special		cterm=bold		ctermfg=NONE
hi SpecialKey		cterm=bold		ctermfg=NONE
hi SpellBad		cterm=NONE		ctermfg=NONE	 ctermbg=224
hi SpellLocal		cterm=NONE		ctermfg=NONE	 ctermbg=223
hi Statement		cterm=bold		ctermfg=NONE
hi StatusLine		cterm=bold,reverse	ctermfg=NONE
hi StatusLineNC		cterm=reverse		ctermfg=NONE
hi TabLine		cterm=reverse		ctermfg=NONE	 ctermbg=NONE
hi Title		cterm=bold		ctermfg=NONE
hi Todo			cterm=bold,standout	ctermfg=185	 ctermbg=0
hi Type			cterm=bold		ctermfg=NONE
hi Underlined		cterm=underline		ctermfg=NONE
hi VertSplit		cterm=bold		ctermfg=240	 ctermbg=NONE
hi VertSplit		cterm=reverse		ctermfg=NONE
hi Visual		cterm=reverse		ctermfg=NONE	 ctermbg=NONE
hi VisualNOS		cterm=bold,underline	ctermfg=NONE
hi WarningMsg		cterm=standout		ctermfg=NONE
hi WildMenu		cterm=standout		ctermfg=NONE

" LSP-related stuff
hi DiagnosticUnderlineError                     ctermbg=224      cterm=NONE
hi DiagnosticUnderlineWarn                      ctermbg=230      cterm=NONE
hi DiagnosticUnderlineInfo                      guisp=243      cterm=underline
hi DiagnosticUnderlineHint                      guisp=243      cterm=underline
hi DiagnosticUnnecessary                        guisp=243      cterm=underline
hi link DiagnosticFloatingError                 Normal
hi link DiagnosticFloatingWarn                  Normal
hi link DiagnosticFloatingInfo                  Normal
hi link DiagnosticFloatingHint                  Normal
hi link LspCodeLens                             Comment
hi link LightBulbVirtualText                    Comment
