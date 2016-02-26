" Vim color scheme Lucid
" ----------------------------------------------------------------------
" Created by Chris Seelus (@cseelus)
"
:let _rock_dark   = '#101010'
:let _rock        = '#2c2d2e'
:let _gray_dark   = '#535557'
:let _gray        = '#767b86'
:let _gray_medium = '#cec5ce'
:let _gray_light  = '#d2d3d3'
:let _cloud       = '#e6e7e7'
" --------------------------
:let _turquoise   = '#4bd9a0'
:let _fluoric     = '#c1ffc6'
:let _cyan        = '#99feff'
:let _steel       = '#94a2da'
:let _powder      = '#8fc7db'
:let _sky         = '#b3e4eb'
:let _wine        = '#c6006a'
:let _sap         = '#fde9a2'

" Strange color issue for MacVim; Colors too saturated + wrong hue
if has("gui_macvim")
  :let _rock_dark = '#0f0e0f'
  :let _steel    = '#83a8d1'
endif

" Light/inverted colors (darkrock-cloud, rock-lightgrey switched)
if &background == "light"
  :let _rock_dark  = '#fcfdfd'
  :let _rock       = '#dfe0e0'
  :let _gray_dark  = '#a9aeb3'
  :let _gray       = '#82868a'
  :let _gray_light = '#2c2d2e'
  :let _cloud      = '#101010'
  " --------------------------
  :let _turquoise   = '#1b9956'
  :let _fluoric     = '#628a64'
  :let _cyan        = '#34b9b9'
  :let _steel       = '#1b009a'
  :let _powder      = '#3b7e9a'
  :let _sky         = '#2e8f9f'
  :let _wine        = '#a1004d'
  :let _sap         = '#fde9a2'
endif


hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
let colors_name = "lucid"
let colorgroup = {}


" Interface
" ----------------------------------------------------------------------
let colorgroup['Normal']       = {"GUIFG": _cloud,     "GUIBG":  _rock_dark}
" ------------------------
let colorgroup['Darker']       = {"GUIFG": _gray,      "GUIBG":  _rock_dark}
let colorgroup['ColorColumn']  = {"GUIFG": _rock_dark, "GUIBG":  _wine}
let colorgroup['Conceal']      = {"GUIFG": _cloud,     "GUIBG":  _powder}
let colorgroup['Cursor']       = {"GUIFG": _rock_dark, "GUIBG":  _fluoric}
let colorgroup['CursorLine']   = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['CursorLineNr'] = {"GUIFG": _gray_dark, "GUIBG":  _rock_dark}
let colorgroup['Directory']    = {"GUIFG": _fluoric,   "GUIBG":  _rock_dark}
let colorgroup['Error']        = {"GUIFG": _rock_dark, "GUIBG":  _wine}
let colorgroup['FoldColumn']   = {                     "GUIBG":  _rock_dark}
let colorgroup['Folded']       = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['LineNr']       = {"GUIFG": _gray_dark, "GUIBG":  _rock_dark}
let colorgroup['MatchParen']   = {"GUIFG": _rock_dark, "GUIBG":  _powder}
let colorgroup['ModeMsg']      = {"GUIFG": _rock_dark, "GUIBG":  _fluoric}
let colorgroup['Pmenu']        = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['PmenuSel']     = {"GUIFG": _rock_dark, "GUIBG":  _fluoric}
let colorgroup['PmenuSbar']    = {                     "GUIBG":  _rock_dark}
let colorgroup['Search']       = {                     "GUIBG":  _gray_dark, "GUI": "underline"}
let colorgroup['SignColumn']   = {                     "GUIBG":  _rock_dark}
let colorgroup['StatusLine']   = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['StatusLineNC'] = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['Title']        = {"GUIFG": _wine,      "GUI": "bold"}
let colorgroup['Todo']         = {"GUIFG": _rock_dark, "GUIBG":  _powder}
let colorgroup['VertSplit']    = {"GUIFG": _rock,      "GUIBG":  _rock}
if &background == "light"
  let colorgroup['Visual']       = {"GUIFG": _cloud, "GUIBG":  _sap}
endif
let colorgroup['WarningMsg']   = {"GUIFG": _rock_dark, "GUIBG":  _steel}


" Syntax
" ----------------------------------------------------------------------
let colorgroup['Access']       = {"GUIFG": _fluoric,   "GUI": "bold"}
let colorgroup['Comment']      = {"GUIFG": _gray,      "GUI": "italic"}
let colorgroup['Conditional']  = {"GUIFG": _cyan}
let colorgroup['Constant']     = {"GUIFG": _turquoise}
let colorgroup['Delimiter']    = {"GUIFG": _wine}
let colorgroup['Function']     = {"GUIFG": _steel}
let colorgroup['Identifier']   = {"GUIFG": _sky}
let colorgroup['NonText']      = {"GUIFG": _rock}
let colorgroup['Number']       = {"GUIFG": _turquoise}
let colorgroup['PreProc']      = {"GUIFG": _wine}
let colorgroup['Statement']    = {"GUIFG": _wine}
let colorgroup['Special']      = {"GUIFG": _sap}
let colorgroup['SpecialKey']   = {"GUIFG": _gray_light}
let colorgroup['String']       = {"GUIFG": _fluoric}
let colorgroup['StorageClass'] = {"GUIFG": _cloud,     "GUI": "bold"}
let colorgroup['Structure']    = {"GUIFG": _gray_medium}
let colorgroup['Symbol']       = {"GUIFG": _sky}
let colorgroup['Type']         = {"GUIFG": _steel}
let colorgroup['Underlined']   = {"GUIFG": _turquoise, "GUI": "underline"}
" ------------------------
hi link Boolean               Number
hi link Character             Function
hi link ErrorMsg              Function
hi link Debug                 Special
hi link Define                Statement
hi link Exception             PreProc
hi link Float                 Number
hi link Include               Function
hi link Label                 Statement
hi link Macro                 PreProc
hi link Operator              PreProc
hi link PreCondit             PreProc
hi link Repeat                Statement
hi link SpecialChar           Special
hi link SpecialComment        Special
hi link Typedef               Type
hi link Tag                   Special


" Plugins
" ----------------------------------------------------------------------

" CtrlP
hi link CtrlPMatch            Function

" GitGutter
hi link GitGutterAdd          String
hi link GitGutterChange       Special
hi link GitGutterDelete       Identifier
hi link GitGutterChangeDelete Constant

" NERDtree
hi link NerdTreeCWD           Statement
hi link NerdTreeHelpKey       Function
hi link NerdTreeHelpTitle     Statement
hi link NerdTreeOpenable      Statement
hi link NerdTreeClosable      Statement
hi link NerdTreeDir           Function
hi link NerdTreeDirSlash      Function

" PlainTasks (.todo)
hi link ptCompleteTask        Number
hi link ptContext             Type
hi link ptSection             Title
hi link ptTask                Normal

" Startify
hi link StartifyNumber        Statement
hi link StartifyBracket       Statement
hi link StartifySection       Title
hi link StartifyPath          Comment
hi link StartifySlash         Comment
hi link StartifyFile          StorageClass


" Language
" ----------------------------------------------------------------------

" Apache
hi link apacheDeclaration     PreProc

" CoffeeScript
hi link coffeeExtendedOp      Function
hi link coffeeObject          Statement
hi link coffeeObjAssign       Function
hi link coffeeParen           Function

" CSS
hi link cssAttr               String
hi link cssClass              Type
hi link cssProp               StorageClass
hi link cssSelectorOp         StorageClass

" HAML
hi link hamlTag               Function

" HTML
hi link htmlArg               Symbol
hi link htmlTag               Function
hi link htmlEndTag            Function

" JavaScript
hi link javascriptFuncArg     Function
hi link javascriptFuncComma   Function
hi link javascriptFuncDef     Statement
hi link javascriptFuncKeyword Statement
hi link javascriptOpSymbols   Type
hi link javascriptParens      Function
hi link javascriptEndcolons   Function

" JSON
hi link jsonKeyword           Function
" LaTeX
hi link texInputFile          PreProc

" Markdown
hi link mkdCode               Identifier
hi link mkdIndentCode         Identifier

" PHP
hi link phpParent             Normal
hi link phpRegion             Comment
hi link phpVarSelector        Identifier

" Ruby
hi link rubyAccess            Access
hi link rubyControl           Function
hi link rubyConstant          Constant
hi link rubyFunction          StorageClass
hi link rubyInclude           Include
hi link rubyInterpolation     Include
" hi link RubyPseudoVariable    Type
hi link rubySymbol            Symbol

" SASS
hi link sassClassChar         Type
" " hi link sassExtend            Symbol
" " hi link sassMixing            Symbol
hi link sassIdChar            Identifier
" hi link sassVariable          Function

" Slim
hi link slimDocType           Function
hi link slimDocTypeKeyword    Statement
hi link slimRubyChar          PreProc
hi link slimRubyOutputChar    PreProc
hi link slimText              Normal

" VimL
hi link vimCmdSep             Function

" YAML
hi link yamlBlockMappingKey   Function
hi link yamlDocumentStart     Comment

" XML
hi link xmlEndTag             Function


" Expand colorgroups
" ----------------------------------------------------------------------

let s:colors = {}
" http://choorucode.com/2011/07/29/vim-chart-of-color-names/
let valid_cterm_colors =
      \ [
      \     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
      \     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
      \     'LightGray', 'LightGrey', 'Gray', 'Grey',
      \     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
      \     'Green', 'LightGreen', 'Cyan', 'LightCyan',
      \     'Red', 'LightRed', 'Magenta', 'LightMagenta',
      \     'Yellow', 'LightYellow', 'White',
      \ ]
for key in keys(colorgroup)
  let s:colors = colorgroup[key]
  if has_key(s:colors, 'TERM')
    let term = s:colors['TERM']
  else
    let term = 'NONE'
  endif
  if has_key(s:colors, 'GUI')
    let gui = s:colors['GUI']
  else
    let gui='NONE'
  endif
  if has_key(s:colors, 'GUIFG')
    let guifg = s:colors['GUIFG']
  else
    let guifg='NONE'
  endif
  if has_key(s:colors, 'GUIBG')
    let guibg = s:colors['GUIBG']
  else
    let guibg='NONE'
  endif
  if has_key(s:colors, 'CTERM')
    let cterm = s:colors['CTERM']
  else
    let cterm=gui
  endif
  if has_key(s:colors, 'CTERMFG')
    let ctermfg = s:colors['CTERMFG']
  else
    if index(valid_cterm_colors, guifg) != -1
      let ctermfg=guifg
    else
      let ctermfg='Blue'
    endif
  endif
  if has_key(s:colors, 'CTERMBG')
    let ctermbg = s:colors['CTERMBG']
  else
    if index(valid_cterm_colors, guibg) != -1
      let ctermbg=guibg
    else
      let ctermbg='NONE'
    endif
  endif
  if has_key(s:colors, 'GUISP')
    let guisp = s:colors['GUISP']
  else
    let guisp='NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor
