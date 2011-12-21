" Vim color file
" Converted from Textmate theme Espresso Tutti using Coloration v0.2.5 (http://github.com/sickill/coloration)
" text
" red: #CA333C;
" green: #73B00A
" dark green: #527E08
" blue: #2f6f9f
" blue bg: #F4FAFF
" dark blue
" purple
" purple bg
" dark purple: #2A0C63

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Espresso Tutti"

hi Cursor               guifg=NONE guibg=#ADDBFB gui=NONE
hi Visual               guifg=NONE guibg=#80c7ff gui=NONE
hi CursorLine           guifg=NONE guibg=#E2F8FF gui=NONE
hi CursorColumn         guifg=NONE guibg=#f3f3f3 gui=NONE
hi LineNr               guifg=#aaaaaa guibg=#f6f6f6 gui=NONE
hi VertSplit            guifg=#ffffff guibg=NONE gui=NONE
hi MatchParen           guifg=#F4FAFF guibg=#2f6f9f gui=NONE

" Line below splits
hi StatusLine           guifg=#000000 guibg=#cfcfcf gui=bold
hi StatusLineNC         guifg=#000000 guibg=#cfcfcf gui=NONE
hi Pmenu                guifg=#d44950 guibg=NONE gui=NONE
hi PmenuSel             guifg=NONE guibg=#80c7ff gui=NONE
hi IncSearch            guifg=NONE guibg=#FFFBAC gui=NONE
hi Search               guifg=NONE guibg=#FFFBAC gui=NONE
hi Directory            guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Folded               guifg=#aaaaaa guibg=#ffffff gui=NONE

hi Normal               guifg=#3A3A3A guibg=#ffffff gui=NONE
hi Boolean              guifg=#7653c2 guibg=#f3f2ff gui=NONE
hi Character            guifg=#7653c2 guibg=#f3f2ff gui=NONE
hi Comment              guifg=#aaaaaa guibg=NONE gui=NONE
hi Conditional          guifg=#2f6f9f guibg=#f5faff gui=NONE
hi Constant             guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi Define               guifg=#2f6f9f guibg=#f5faff gui=NONE
hi ErrorMsg             guifg=#f93232 guibg=#f9f2ce gui=NONE
hi Error             guifg=#f93232 guibg=#f9f2ce gui=NONE
hi WarningMsg           guifg=#f93232 guibg=#f9f2ce gui=NONE
hi Float                guifg=#cf4f5f guibg=NONE gui=NONE
hi Function             guifg=#3a1d72 guibg=NONE gui=NONE
hi Identifier           guifg=#2f6f9f guibg=#f5faff gui=NONE
hi Keyword              guifg=#D71707 guibg=#f5faff gui=NONE
hi Label                guifg=#73b00a guibg=#ffffff gui=NONE
hi NonText              guifg=#a0a0a0 guibg=#ffffff gui=NONE
hi Number               guifg=#7653c2 guibg=#f3f2ff gui=NONE
hi Operator             guifg=#2f6f9f guibg=#f5faff gui=NONE
hi PreProc              guifg=#2f6f9f guibg=#f5faff gui=NONE
hi Special              guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey           guifg=#404040 guibg=#c1e2f8 gui=NONE
"colors html selector
hi Statement            guifg=#2f6f9f guibg=#f5faff gui=NONE
"colors css attribute, value?
hi StorageClass         guifg=#73b00a guibg=NONE gui=NONE
hi String               guifg=#73b00a guibg=#ffffff gui=NONE
hi Tag                  guifg=#2f6f9f guibg=#f5faff gui=NONE
hi Title                guifg=#3A3A3A guibg=NONE gui=NONE
hi Todo                 guifg=#aaaaaa guibg=NONE gui=inverse,bold
hi Type                 guifg=#d44950 guibg=NONE gui=NONE
hi Underlined           guifg=NONE guibg=NONE gui=NONE

hi rubyClass            guifg=#2f6f9f guibg=#f4faff gui=NONE
hi rubyFunction         guifg=#3a1d72 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol           guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi rubyConstant         guifg=#4e279a guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#73b00a guibg=#ffffff gui=NONE
hi rubyBlockParameter   guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyInclude          guifg=#2f6f9f guibg=#f4faff gui=NONE
hi rubyGlobalVariable   guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyRegexp           guifg=#73b00a guibg=#ffffff gui=NONE
hi rubyRegexpDelimiter  guifg=#73b00a guibg=#ffffff gui=NONE
hi rubyEscape           guifg=#000000 guibg=#e8ffd5 gui=NONE
hi rubyControl          guifg=#2f6f9f guibg=#f4faff gui=NONE
hi rubyClassVariable    guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyOperator         guifg=#2f6f9f guibg=#f4faff gui=NONE
hi rubyException        guifg=#2f6f9f guibg=#f4faff gui=NONE
hi rubyPseudoVariable   guifg=#7b8c4d guibg=NONE gui=NONE
hi rubyRailsUserClass   guifg=#4e279a guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#d71707 guibg=NONE gui=NONE
hi rubyRailsARMethod    guifg=#d71707 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#d71707 guibg=NONE gui=NONE
hi rubyRailsMethod      guifg=#d71707 guibg=NONE gui=NONE

" hi erubyDelimiter       guifg=NONE guibg=NONE gui=NONE
" hi erubyComment         guifg=#aaaaaa guibg=NONE gui=NONE
" hi erubyRailsMethod     guifg=#d71707 guibg=NONE gui=NONE

hi htmlTag              guifg=#4f9eeb guibg=NONE gui=NONE
hi htmlEndTag           guifg=#4f9eeb guibg=NONE gui=NONE
hi htmlTagName          guifg=#2f6f9f guibg=#f4faff gui=NONE
hi htmlArg              guifg=#7653c1 guibg=#f3f2ff gui=NONE
hi htmlSpecialChar      guifg=#7653c1 guibg=#f3f2ff gui=NONE

" hi javaScriptFunction   guifg=#2f6f9f guibg=#f4faff gui=NONE
" hi javaScriptRailsFunction  guifg=#d71707 guibg=NONE gui=NONE
" hi javaScriptBraces     guifg=NONE guibg=NONE gui=NONE

" hi yamlKey              guifg=#2f6f9f guibg=#f5faff gui=NONE
" hi yamlAnchor           guifg=#7b8c4d guibg=NONE gui=NONE
" hi yamlAlias            guifg=#7b8c4d guibg=NONE gui=NONE
" hi yamlDocumentHeader   guifg=#73b00a guibg=#ffffff gui=NONE

" " Styles for css
" hi cssURL               guifg=#2A0C63 guibg=NONE gui=NONE
" hi cssFunctionName      guifg=#73b00a guibg=NONE gui=NONE
" hi cssClassName         guifg=#2A0C63 guibg=NONE gui=NONE

" "hi cssColor             guifg=#389507 guibg=NONE gui=NONE
" "hi cssPseudoClassId     guifg=#2f6f9f guibg=NONE gui=NONE
" "hi cssValueLength       guifg=#7653c2 guibg=#f3f2ff gui=NONE
" hi cssCommonAttr         guifg=#CA333C guibg=NONE gui=NONE

" hi cssBraces            guifg=#696969 guibg=NONE gui=NONE
" hi cssTextProp          guifg=#73b00a guibg=NONE gui=NONE
" hi cssFontProp          guifg=#73b00a guibg=NONE gui=NONE

" hi cssColorAttr           guifg=#CA333C guibg=NONE gui=NONE
" hi cssBoxAttr             guifg=#CA333C guibg=NONE gui=NONE
" hi cssRenderAttr          guifg=#CA333C guibg=NONE gui=NONE
" hi cssAuralAttr           guifg=#CA333C guibg=NONE gui=NONE
" hi cssGeneratedContentAttr          guifg=#CA333C guibg=NONE gui=NONE
" hi cssPagingAttr          guifg=#CA333C guibg=NONE gui=NONE
" hi cssTableAttr           guifg=#CA333C guibg=NONE gui=NONE
" hi cssUIAttr              guifg=#CA333C guibg=NONE gui=NONE
" hi cssTextAttr            guifg=#CA333C guibg=NONE gui=NONE
" hi cssFontAttr            guifg=#CA333C guibg=NONE gui=NONE
" hi cssAuralAttr           guifg=#CA333C guibg=NONE gui=NONE

" "Scss styles
" hi scssInclude          guifg=#527E08 guibg=NONE gui=NONE
" hi scssExtend           guifg=#527E08  guibg=NONE gui=NONE
