" Vim color file

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "custom"

hi Cursor ctermfg=139 ctermbg=0 cterm=NONE guifg=#333842 guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#484b5a gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#474b54 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#474b54 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#474b54 gui=NONE
hi SignColumn ctermfg=113 ctermbg=0 cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi VertSplit ctermfg=60 ctermbg=0 cterm=NONE guifg=#6c7077 guibg=NONE gui=NONE
hi MatchParen ctermfg=139 ctermbg=0 cterm=underline guifg=NONE guibg=#387c98 gui=underline
hi StatusLine ctermfg=231 ctermbg=60 cterm=bold guifg=#f8f8f8 guibg=#6c7077 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=60 cterm=NONE guifg=#f8f8f8 guibg=#6c7077 gui=NONE
hi Pmenu ctermfg=231 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#4c4f54 gui=NONE
hi IncSearch ctermfg=139 ctermbg=139 cterm=NONE guifg=#000000 guibg=#66a9d4 gui=NONE
hi Search ctermfg=NONE ctermbg=139 cterm=underline guifg=NONE guibg=#484b5a gui=underline
hi Directory ctermfg=141 ctermbg=0 cterm=NONE guifg=#ac92ec guibg=NONE gui=NONE
hi Folded ctermfg=102 ctermbg=0 cterm=NONE guifg=#767f8c guibg=#333842 gui=NONE
hi LineNr ctermfg=015 ctermbg=NONE cterm=NONE guifg=#4c566a guibg=NONE gui=NONE
hi Nontext ctermfg=015 ctermbg=NONE cterm=NONE guifg=#4c566a guibg=NONE gui=NONE

hi Boolean ctermfg=139 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#66a9d4 guibg=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE cterm=NONE guifg=#666c80 guibg=NONE gui=NONE
hi Conditional ctermfg=139 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi Constant ctermfg=81 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=104 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f8 guibg=#498612 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=NONE guibg=#663333 gui=NONE
hi DiffChange ctermfg=231 ctermbg=NONE cterm=NONE guifg=NONE guibg=#336633 gui=NONE
hi DiffText ctermfg=231 ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi ErrorMsg ctermfg=231 ctermbg=NONE cterm=NONE guifg=#bf616a  guibg=NONE gui=NONE
hi WarningMsg ctermfg=231 ctermbg=NONE cterm=NONE guifg=#ffff00 guibg=NONE gui=NONE
hi Float ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi Function ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi Identifier ctermfg=104 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi Keyword ctermfg=139 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi Label ctermfg=139 ctermbg=NONE cterm=NONE guifg=#ffebb5 guibg=NONE gui=NONE
hi Number ctermfg=113 ctermbg=NONE cterm=NONE guifg=#87d75f guibg=NONE gui=NONE
hi Operator ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi PreProc ctermfg=139 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi SpecialKey ctermfg=237 ctermbg=NONE cterm=NONE guifg=#3b3b3b guibg=#474b54 gui=NONE
hi Statement ctermfg=139 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE
hi StorageClass ctermfg=104 ctermbg=NONE cterm=NONE guifg=#8787d7 guibg=NONE gui=NONE
hi String ctermfg=229 ctermbg=NONE cterm=NONE guifg=#ffebb5 guibg=NONE gui=NONE
hi Tag ctermfg=74 ctermbg=NONE cterm=NONE guifg=#4fc1e9 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo ctermfg=102 ctermbg=NONE cterm=bold guifg=#387c98 guibg=NONE gui=inverse,bold
hi Type ctermfg=104 ctermbg=NONE cterm=NONE guifg=#90788c guibg=NONE gui=NONE

hi TabLine ctermfg=242 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=NONE
hi TabLineFill ctermfg=242 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi TabLineSel ctermfg=255 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=NONE
