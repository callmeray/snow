" Name:         snow
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT
" Last Updated: Tue 26 Jun 2018 05:09:18 AM EDT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[snow] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'snow'

if &background ==# 'dark'
  " Color similarity table (dark background)
  " blue: GUI=#5386b3/rgb( 83,134,179)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=1.869743]
  " bprp: GUI=#9462b4/rgb(148, 98,180)  Term= 97 #875faf/rgb(135, 95,175)  [delta=2.831594]
  " gren: GUI=#718959/rgb(113,137, 89)  Term= 65 #5f875f/rgb( 95,135, 95)  [delta=5.080037]
  " born: GUI=#d3844a/rgb(211,132, 74)  Term=173 #d7875f/rgb(215,135, 95)  [delta=5.103130]
  " yllw: GUI=#c29d57/rgb(194,157, 87)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=5.473979]
  " baqu: GUI=#00a28b/rgb(  0,162,139)  Term= 36 #00af87/rgb(  0,175,135)  [delta=5.962707]
  " pink: GUI=#b36e76/rgb(179,110,118)  Term=131 #af5f5f/rgb(175, 95, 95)  [delta=6.279888]
  " aqua: GUI=#3a8f81/rgb( 58,143,129)  Term= 30 #008787/rgb(  0,135,135)  [delta=6.375483]
  " orng: GUI=#a77757/rgb(167,119, 87)  Term=137 #af875f/rgb(175,135, 95)  [delta=6.457090]
  " gry2: GUI=#6d7885/rgb(109,120,133)  Term=243 #767676/rgb(118,118,118)  [delta=7.243619]
  " gry0: GUI=#202a35/rgb( 32, 42, 53)  Term=235 #262626/rgb( 38, 38, 38)  [delta=7.283880]
  " gry1: GUI=#323c48/rgb( 50, 60, 72)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=7.349022]
  " gry3: GUI=#8d98a6/rgb(141,152,166)  Term=246 #949494/rgb(148,148,148)  [delta=7.385261]
  " prpl: GUI=#9476a5/rgb(148,118,165)  Term=139 #af87af/rgb(175,135,175)  [delta=7.462086]
  " red_: GUI=#b07264/rgb(176,114,100)  Term=131 #af5f5f/rgb(175, 95, 95)  [delta=7.713368]
  " bred: GUI=#be5845/rgb(190, 88, 69)  Term=131 #af5f5f/rgb(175, 95, 95)  [delta=8.215286]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=246 ctermbg=NONE guifg=#8d98a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=246 ctermbg=NONE guifg=#8d98a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=246 ctermbg=NONE guifg=#8d98a6 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi NonText ctermfg=246 ctermbg=NONE guifg=#8d98a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=246 ctermbg=235 guifg=#8d98a6 guibg=#202a35 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=246 ctermbg=NONE guifg=#8d98a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=243 ctermbg=NONE guifg=#6d7885 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=243 ctermbg=NONE guifg=#6d7885 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=243 ctermbg=NONE guifg=#6d7885 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=243 ctermbg=NONE guifg=#6d7885 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=235 ctermbg=246 guifg=#202a35 guibg=#8d98a6 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=235 ctermbg=246 guifg=#202a35 guibg=#8d98a6 guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi IncSearch ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi TermCursor ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi TermCursorNC ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=235 ctermbg=243 guifg=#202a35 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi ColorColumn ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi VisualNOS ctermfg=246 ctermbg=237 guifg=#8d98a6 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 guifg=#323c48 guibg=#323c48 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=243 ctermbg=243 guifg=#6d7885 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=243 ctermbg=243 guifg=#6d7885 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=243 ctermbg=243 guifg=#6d7885 guibg=#6d7885 guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffRemoved ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#be5845 cterm=NONE,undercurl gui=NONE,undercurl
  hi TooLong ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=131 ctermbg=NONE guifg=#b07264 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffText ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=137 ctermbg=NONE guifg=#a77757 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d3844a cterm=NONE,undercurl gui=NONE,undercurl
  hi Conditional ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdded ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=65 ctermbg=NONE guifg=#718959 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00a28b cterm=NONE,undercurl gui=NONE,undercurl
  hi StorageClass ctermfg=30 ctermbg=NONE guifg=#3a8f81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=30 ctermbg=NONE guifg=#3a8f81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=30 ctermbg=NONE guifg=#3a8f81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=30 ctermbg=NONE guifg=#3a8f81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#5386b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9462b4 cterm=NONE,undercurl gui=NONE,undercurl
  hi Tag ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=139 ctermbg=NONE guifg=#9476a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=131 ctermbg=NONE guifg=#b36e76 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=131 ctermbg=NONE guifg=#b36e76 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=235 ctermbg=179 guifg=#202a35 guibg=#c29d57 guisp=NONE cterm=NONE gui=NONE
  hi Search ctermfg=235 ctermbg=179 guifg=#202a35 guibg=#c29d57 guisp=NONE cterm=NONE gui=NONE
  finish
endif

" Color similarity table (light background)
" baqu: GUI=#00af8a/rgb(  0,175,138)  Term= 36 #00af87/rgb(  0,175,135)  [delta=0.834852]
" bred: GUI=#f3000d/rgb(243,  0, 13)  Term=196 #ff0000/rgb(255,  0,  0)  [delta=2.942988]
" born: GUI=#fa6c00/rgb(250,108,  0)  Term=202 #ff5f00/rgb(255, 95,  0)  [delta=3.617174]
" bprp: GUI=#a940f2/rgb(169, 64,242)  Term=129 #af00ff/rgb(175,  0,255)  [delta=4.444948]
" prpl: GUI=#a77cc0/rgb(167,124,192)  Term=140 #af87d7/rgb(175,135,215)  [delta=4.538354]
" red_: GUI=#d0726a/rgb(208,114,106)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=4.853484]
" yllw: GUI=#f8ba18/rgb(248,186, 24)  Term=214 #ffaf00/rgb(255,175,  0)  [delta=4.926791]
" blue: GUI=#3593d4/rgb( 53,147,212)  Term= 32 #0087d7/rgb(  0,135,215)  [delta=5.929677]
" gry0: GUI=#e9f4ff/rgb(233,244,255)  Term=255 #eeeeee/rgb(238,238,238)  [delta=6.070585]
" orng: GUI=#bf7d4e/rgb(191,125, 78)  Term=173 #d7875f/rgb(215,135, 95)  [delta=6.343746]
" pink: GUI=#d26e7b/rgb(210,110,123)  Term=168 #d75f87/rgb(215, 95,135)  [delta=6.867818]
" gry2: GUI=#838d9a/rgb(131,141,154)  Term=245 #8a8a8a/rgb(138,138,138)  [delta=6.968974]
" gry3: GUI=#636e7a/rgb( 99,110,122)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=7.003613]
" gry1: GUI=#d1ddeb/rgb(209,221,235)  Term=253 #dadada/rgb(218,218,218)  [delta=7.103856]
" aqua: GUI=#009f8b/rgb(  0,159,139)  Term= 36 #00af87/rgb(  0,175,135)  [delta=7.250378]
" gry4: GUI=#323c48/rgb( 50, 60, 72)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=7.349022]
" gren: GUI=#739750/rgb(115,151, 80)  Term=107 #87af5f/rgb(135,175, 95)  [delta=7.438664]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=242 ctermbg=NONE guifg=#636e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=242 ctermbg=NONE guifg=#636e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=242 ctermbg=NONE guifg=#636e7a guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi NonText ctermfg=242 ctermbg=NONE guifg=#636e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=242 ctermbg=255 guifg=#636e7a guibg=#e9f4ff guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=242 ctermbg=NONE guifg=#636e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=245 ctermbg=NONE guifg=#838d9a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=245 ctermbg=NONE guifg=#838d9a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=245 ctermbg=NONE guifg=#838d9a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=245 ctermbg=NONE guifg=#838d9a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=242 guifg=#e9f4ff guibg=#636e7a guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=255 ctermbg=242 guifg=#e9f4ff guibg=#636e7a guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi TermCursor ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi TermCursorNC ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=255 ctermbg=245 guifg=#e9f4ff guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=242 ctermbg=253 guifg=#636e7a guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=253 ctermbg=253 guifg=#d1ddeb guibg=#d1ddeb guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=245 ctermbg=245 guifg=#838d9a guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=245 ctermbg=245 guifg=#838d9a guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=245 ctermbg=245 guifg=#838d9a guibg=#838d9a guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffRemoved ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f3000d cterm=NONE,undercurl gui=NONE,undercurl
hi TooLong ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#d0726a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=173 ctermbg=NONE guifg=#bf7d4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fa6c00 cterm=NONE,undercurl gui=NONE,undercurl
hi Conditional ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdded ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=107 ctermbg=NONE guifg=#739750 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00af8a cterm=NONE,undercurl gui=NONE,undercurl
hi StorageClass ctermfg=36 ctermbg=NONE guifg=#009f8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=36 ctermbg=NONE guifg=#009f8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=36 ctermbg=NONE guifg=#009f8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=36 ctermbg=NONE guifg=#009f8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#3593d4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#a940f2 cterm=NONE,undercurl gui=NONE,undercurl
hi Tag ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=140 ctermbg=NONE guifg=#a77cc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=168 ctermbg=NONE guifg=#d26e7b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=168 ctermbg=NONE guifg=#d26e7b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=237 ctermbg=214 guifg=#323c48 guibg=#f8ba18 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=237 ctermbg=214 guifg=#323c48 guibg=#f8ba18 guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color:      gry0 #e9f4ff ~ # lch 95.83 008.33 262.5
" Color:      gry1 #d1ddeb ~ # lch 87.50 008.33 262.5
" Color:      gry2 #838d9a ~ # lch 58.33 008.33 262.5
" Color:      gry3 #636e7a ~ # lch 45.83 008.33 262.5
" Color:      gry4 #323c48 ~ # lch 25.00 008.33 262.5
" Color:      red_ #d0726a ~ # lch 58.33 041.67 037.5
" Color:      orng #bf7d4e ~ # lch 58.33 041.67 060
" Color:      yllw #f8ba18 ~ # lch 79.17 079.17 082.5
" Color:      gren #739750 ~ # lch 58.33 041.67 127.5
" Color:      aqua #009f8b ~ # lch 58.33 041.67 180
" Color:      blue #3593d4 ~ # lch 58.33 041.67 262.5
" Color:      prpl #a77cc0 ~ # lch 58.33 041.67 315
" Color:      pink #d26e7b ~ # lch 58.33 041.67 015
" Color:      bred #f3000d ~ # lch 50.00 100.00 037.5
" Color:      born #fa6c00 ~ # lch 62.50 100.00 060
" Color:      baqu #00af8a ~ # lch 58.33 100.00 180
" Color:      bprp #a940f2 ~ # lch 50.00 100.00 315
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        gry3   none
" Ignore             gry3   none
" Italic             gry3   none   italic
" NonText            gry3   none
" Normal             gry3   gry0
" Terminal           gry3   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" DiffChange         gry2   none
" LineNr             gry2   none
" PmenuSel           gry0   gry3
" WildMenu           gry0   gry3
" Cursor             gry0   gry2
" FoldColumn         gry0   gry2
" IncSearch          gry0   gry2
" StatusLineNC       gry0   gry2
" StatusLineTermNC   gry0   gry2
" TabLine            gry0   gry2
" TermCursor         gry0   gry2
" TermCursorNC       gry0   gry2
" ToolbarButton      gry0   gry2
" VertSplit          gry0   gry2
" ColorColumn        gry3   gry1
" CursorColumn       gry3   gry1
" CursorLine         gry3   gry1
" Folded             gry3   gry1
" Pmenu              gry3   gry1
" QuickFixLine       gry3   gry1
" SignColumn         gry3   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" Visual             gry3   gry1
" VisualNOS          gry3   gry1
" PmenuSbar          gry1   gry1
" PmenuThumb         gry2   gry2
" TabLineFill        gry2   gry2
" ToolbarLine        gry2   gry2
" DiffDelete         red_   none
" DiffRemoved        red_   none
" Error              red_   none
" ErrorMsg           red_   none
" SpellBad           none   none   undercurl s=bred
" TooLong            red_   none
" WarningMsg         red_   none
" Define             orng   none
" DiffChanged        orng   none
" DiffText           orng   none
" Include            orng   none
" Macro              orng   none
" PreCondit          orng   none
" PreProc            orng   none
" Question           orng   none
" SpellCap           none   none   undercurl s=born
" Conditional        gren   none
" DiffAdd            gren   none
" DiffAdded          gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" ModeMsg            gren   none
" MoreMsg            gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" SpellLocal         none   none   undercurl s=baqu
" StorageClass       aqua   none
" Structure          aqua   none
" Type               aqua   none
" Typedef            aqua   none
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              prpl   none
" Delimiter          prpl   none
" Special            prpl   none
" SpecialChar        prpl   none
" SpecialComment     prpl   none
" SpecialKey         prpl   none
" SpellRare          none   none   undercurl s=bprp
" Tag                prpl   none
" Todo               prpl   none
" Function           pink   none
" Identifier         pink   none
" Search      gry4 yllw
" MatchParen  gry4 yllw
" Background: dark
" Color:      gry0 #202a35 ~ # lch 16.67 008.33 262.5
" Color:      gry1 #323c48 ~ # lch 25.00 008.33 262.5
" Color:      gry2 #6d7885 ~ # lch 50.00 008.33 262.5
" Color:      gry3 #8d98a6 ~ # lch 62.50 008.33 262.5
" Color:      red_ #b07264 ~ # lch 54.17 029.17 037.5
" Color:      orng #a77757 ~ # lch 54.17 029.17 060
" Color:      yllw #c29d57 ~ # lch 66.67 041.67 082.5
" Color:      gren #718959 ~ # lch 54.17 029.17 127.5
" Color:      aqua #3a8f81 ~ # lch 54.17 029.17 180
" Color:      blue #5386b3 ~ # lch 54.17 029.17 262.5
" Color:      prpl #9476a5 ~ # lch 54.17 029.17 315
" Color:      pink #b36e76 ~ # lch 54.17 029.17 015
" Color:      bred #be5845 ~ # lch 50.00 050.00 037.5
" Color:      born #d3844a ~ # lch 62.50 050.00 060
" Color:      baqu #00a28b ~ # lch 58.33 050.00 180
" Color:      bprp #9462b4 ~ # lch 50.00 050.00 315
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        gry3   none
" Ignore             gry3   none
" Italic             gry3   none   italic
" NonText            gry3   none
" Normal             gry3   gry0
" Terminal           gry3   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" DiffChange         gry2   none
" LineNr             gry2   none
" PmenuSel           gry0   gry3
" WildMenu           gry0   gry3
" Cursor             gry0   gry2
" FoldColumn         gry0   gry2
" IncSearch          gry0   gry2
" StatusLineNC       gry0   gry2
" StatusLineTermNC   gry0   gry2
" TabLine            gry0   gry2
" TermCursor         gry0   gry2
" TermCursorNC       gry0   gry2
" ToolbarButton      gry0   gry2
" VertSplit          gry0   gry2
" ColorColumn        gry3   gry1
" CursorColumn       gry3   gry1
" CursorLine         gry3   gry1
" Folded             gry3   gry1
" Pmenu              gry3   gry1
" QuickFixLine       gry3   gry1
" SignColumn         gry3   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" Visual             gry3   gry1
" VisualNOS          gry3   gry1
" PmenuSbar          gry1   gry1
" PmenuThumb         gry2   gry2
" TabLineFill        gry2   gry2
" ToolbarLine        gry2   gry2
" DiffDelete         red_   none
" DiffRemoved        red_   none
" Error              red_   none
" ErrorMsg           red_   none
" SpellBad           none   none   undercurl s=bred
" TooLong            red_   none
" WarningMsg         red_   none
" Define             orng   none
" DiffChanged        orng   none
" DiffText           orng   none
" Include            orng   none
" Macro              orng   none
" PreCondit          orng   none
" PreProc            orng   none
" Question           orng   none
" SpellCap           none   none   undercurl s=born
" Conditional        gren   none
" DiffAdd            gren   none
" DiffAdded          gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" ModeMsg            gren   none
" MoreMsg            gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" SpellLocal         none   none   undercurl s=baqu
" StorageClass       aqua   none
" Structure          aqua   none
" Type               aqua   none
" Typedef            aqua   none
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              prpl   none
" Delimiter          prpl   none
" Special            prpl   none
" SpecialChar        prpl   none
" SpecialComment     prpl   none
" SpecialKey         prpl   none
" SpellRare          none   none   undercurl s=bprp
" Tag                prpl   none
" Todo               prpl   none
" Function           pink   none
" Identifier         pink   none
" MatchParen  gry0 yllw
" Search      gry0 yllw
