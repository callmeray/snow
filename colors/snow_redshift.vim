" Name:         snow_redshift
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[snow_redshift] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'snow_redshift'

if &background ==# 'dark'
  " Color similarity table (dark background)
  " yllw: GUI=#e2bd67/rgb(226,189,103)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=3.812495]
  " blue: GUI=#6a9db9/rgb(106,157,185)  Term= 74 #5fafd7/rgb( 95,175,215)  [delta=6.210724]
  " red_: GUI=#bd8696/rgb(189,134,150)  Term=138 #af8787/rgb(175,135,135)  [delta=6.927179]
  " gryy: GUI=#242f3a/rgb( 36, 47, 58)  Term=236 #303030/rgb( 48, 48, 48)  [delta=7.346951]
  " gry0: GUI=#242f3a/rgb( 36, 47, 58)  Term=236 #303030/rgb( 48, 48, 48)  [delta=7.346951]
  " gryc: GUI=#acb8c6/rgb(172,184,198)  Term=249 #b2b2b2/rgb(178,178,178)  [delta=7.390112]
  " gren: GUI=#8b9b70/rgb(139,155,112)  Term=101 #87875f/rgb(135,135, 95)  [delta=7.910427]
  " gry1: GUI=#2c3945/rgb( 44, 57, 69)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=7.913227]
  " gry2: GUI=#738393/rgb(115,131,147)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=8.324466]
  " gry3: GUI=#8b9bac/rgb(139,155,172)  Term=247 #9e9e9e/rgb(158,158,158)  [delta=9.040186]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=247 ctermbg=236 guifg=#8b9bac guibg=#242f3a guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=67 ctermbg=NONE guifg=#738393 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#738393 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=67 ctermbg=NONE guifg=#738393 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=249 ctermbg=236 guifg=#acb8c6 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=249 ctermbg=236 guifg=#acb8c6 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=249 ctermbg=236 guifg=#acb8c6 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTermNC ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WildMenu ctermfg=67 ctermbg=236 guifg=#738393 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=247 ctermbg=237 guifg=#8b9bac guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=247 ctermbg=237 guifg=#8b9bac guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=247 ctermbg=237 guifg=#8b9bac guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=247 ctermbg=237 guifg=#8b9bac guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=247 ctermbg=237 guifg=#8b9bac guibg=#2c3945 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#738393 guibg=#738393 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=247 ctermbg=247 guifg=#8b9bac guibg=#8b9bac guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=67 ctermbg=67 guifg=#738393 guibg=#738393 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#2c3945 guibg=#2c3945 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=138 ctermbg=NONE guifg=#bd8696 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=138 ctermbg=236 guifg=#bd8696 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=101 ctermbg=NONE guifg=#8b9b70 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=101 ctermbg=236 guifg=#8b9b70 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=101 ctermbg=236 guifg=#8b9b70 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=74 ctermbg=NONE guifg=#6a9db9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=74 ctermbg=236 guifg=#6a9db9 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=74 ctermbg=236 guifg=#6a9db9 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=74 ctermbg=236 guifg=#6a9db9 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=74 ctermbg=236 guifg=#6a9db9 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" gry0: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
" yllw: GUI=#ffd300/rgb(255,211,  0)  Term=220 #ffd700/rgb(255,215,  0)  [delta=1.299534]
" gren: GUI=#528400/rgb( 82,132,  0)  Term= 64 #5f8700/rgb( 95,135,  0)  [delta=2.624397]
" gry1: GUI=#e9eef4/rgb(233,238,244)  Term=255 #eeeeee/rgb(238,238,238)  [delta=3.309252]
" blue: GUI=#007bc4/rgb(  0,123,196)  Term= 32 #0087d7/rgb(  0,135,215)  [delta=4.676178]
" red_: GUI=#d13c7b/rgb(209, 60,123)  Term=162 #d70087/rgb(215,  0,135)  [delta=6.356068]
" gryy: GUI=#242f3a/rgb( 36, 47, 58)  Term=236 #303030/rgb( 48, 48, 48)  [delta=7.346951]
" gry2: GUI=#7a8a9b/rgb(122,138,155)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=8.151393]
" gryc: GUI=#4f5d6b/rgb( 79, 93,107)  Term=240 #585858/rgb( 88, 88, 88)  [delta=8.353758]
" gry3: GUI=#5e6d7d/rgb( 94,109,125)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=8.851102]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=242 ctermbg=231 guifg=#5e6d7d guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=67 ctermbg=NONE guifg=#7a8a9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#7a8a9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=67 ctermbg=NONE guifg=#7a8a9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=240 ctermbg=231 guifg=#4f5d6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=240 ctermbg=231 guifg=#4f5d6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=240 ctermbg=231 guifg=#4f5d6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLine ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTermNC ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WildMenu ctermfg=67 ctermbg=231 guifg=#7a8a9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=242 ctermbg=255 guifg=#5e6d7d guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=242 ctermbg=255 guifg=#5e6d7d guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=242 ctermbg=255 guifg=#5e6d7d guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=242 ctermbg=255 guifg=#5e6d7d guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=242 ctermbg=255 guifg=#5e6d7d guibg=#e9eef4 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#7a8a9b guibg=#7a8a9b guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=242 ctermbg=242 guifg=#5e6d7d guibg=#5e6d7d guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=67 ctermbg=67 guifg=#7a8a9b guibg=#7a8a9b guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#e9eef4 guibg=#e9eef4 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=162 ctermbg=NONE guifg=#d13c7b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=162 ctermbg=231 guifg=#d13c7b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=64 ctermbg=NONE guifg=#528400 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=64 ctermbg=231 guifg=#528400 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=64 ctermbg=231 guifg=#528400 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=32 ctermbg=NONE guifg=#007bc4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=32 ctermbg=231 guifg=#007bc4 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=32 ctermbg=231 guifg=#007bc4 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=32 ctermbg=231 guifg=#007bc4 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=32 ctermbg=231 guifg=#007bc4 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=236 guifg=#ffd300 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=236 guifg=#ffd300 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=236 guifg=#ffd300 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=236 guifg=#ffd300 guibg=#242f3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #ffffff ~
" Color:      gry1 #e9eef4 ~
" Color:      gry2 #7a8a9b ~
" Color:      gry3 #5e6d7d ~
" Color:      gryc #4f5d6b ~
" Color:      gryy #242f3a ~
" Color:      yllw #ffd300 ~
" Color:      red_ #d13c7b ~
" Color:      gren #528400 ~
" Color:      blue #007bc4 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" TabLine            gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" WildMenu           gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" ToolbarButton      gry3   gry1   bold
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gryy reverse
" DiffText    yllw gryy reverse
" MatchParen  yllw gryy reverse
" Search      yllw gryy reverse
" Background: dark
" Color:      gry0 #242f3a ~
" Color:      gry1 #2c3945 ~
" Color:      gry2 #738393 ~
" Color:      gry3 #8b9bac ~
" Color:      gryc #acb8c6 ~
" Color:      gryy #242f3a ~
" Color:      yllw #e2bd67 ~
" Color:      red_ #bd8696 ~
" Color:      gren #8b9b70 ~
" Color:      blue #6a9db9 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" TabLine            gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" WildMenu           gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" ToolbarButton      gry3   gry1   bold
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gryy reverse
" DiffText    yllw gryy reverse
" MatchParen  yllw gryy reverse
" Search      yllw gryy reverse
