vim.o.background = 'dark'
vim.opt.termguicolors = true

local lush = require('lush')
local hsl = lush.hsl

-- ── palette ──────────────────────────────────────────────────────────────────
--  bg0      #1C1C1C   editor bg       (neutral dark gray)
--  bg1      #181818   sidebar / float
--  bg2      #252525   selection
--  fg       #F0F0EE   main text       (near white — majority of code)
--  fg_dim   #888888   dim ui text
--  comment  #505050   comments
--  green    #7A9E7A   main accent     (muted forest green)
--  green_hi #A8C8A8   highlight       (lighter version of main)
--  gray_grn #8A9E8A   secondary       (gray-green, very low sat)
--  warm     #B0A898   strings         (desaturated warm gray)
--  red      #A87878   errors

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- ── base ────────────────────────────────────────────────────────────
    Normal       { bg = hsl('#1C1C1C'), fg = hsl('#F0F0EE') },
    NormalFloat  { bg = hsl('#181818'), fg = hsl('#F0F0EE') },
    NormalNC     { Normal },

    -- ── syntax ──────────────────────────────────────────────────────────
    Comment      { fg = hsl('#505050'), gui = 'italic' },

    Constant     { fg = hsl('#F0F0EE') },
    --String       { fg = hsl('#B0A898') },              -- desaturated warm gray
    String       { fg = hsl('#E0DAD2') },              -- desaturated warm gray
    Character    { String },
    Number       { fg = hsl('#8A9E8A') },              -- gray-green
    Boolean      { fg = hsl('#A8C8A8') },              -- lighter green highlight
    Float        { Number },

    Identifier   { fg = hsl('#F0F0EE') },              -- white
    Function     { fg = hsl('#A8C8A8') },              -- lighter green highlight

    Keyword      { fg = hsl('#7A9E7A') },              -- muted forest green
    Statement    { Keyword },
    Conditional  { Keyword },
    Repeat       { Keyword },
    Label        { Keyword },
    Exception    { fg = hsl('#A87878') },

    PreProc      { fg = hsl('#8A9E8A') },              -- gray-green
    Include      { PreProc },
    Define       { PreProc },
    Macro        { PreProc },

    Type         { fg = hsl('#7A9E7A').lighten(5) },   -- muted green
    StorageClass { Type },
    Structure    { Type },
    Typedef      { Type },

    Special      { fg = hsl('#8A9E8A') },
    SpecialChar  { Special },
    Delimiter    { fg = hsl('#686868') },
    Operator     { fg = hsl('#888888') },

    Error        { fg = hsl('#A87878') },
    Todo         { fg = hsl('#A8C8A8'), gui = 'bold' },

    -- ── editor ui ───────────────────────────────────────────────────────
    LineNr       { fg = hsl('#383838') },
    CursorLineNr { fg = hsl('#7A9E7A') },
    CursorLine   { bg = hsl('#222222').desaturate(60) },
    CursorColumn { CursorLine },
    ColorColumn  { CursorLine },

    SignColumn   { Normal },

    Visual       { bg = hsl('#2A2A2A') },
    VisualNOS    { Visual },

    Search       { bg = hsl('#7A9E7A').darken(40), fg = hsl('#F0F0EE'), gui = 'bold' },
    IncSearch    { bg = hsl('#7A9E7A').darken(20), fg = hsl('#1C1C1C'), gui = 'bold' },

    MatchParen   { bg = hsl('#2E3A2E'), fg = hsl('#A8C8A8'), gui = 'bold' },

    StatusLine   { bg = hsl('#181818'), fg = hsl('#888888') },
    StatusLineNC { bg = hsl('#181818'), fg = hsl('#404040') },
    WinSeparator { fg = hsl('#282828') },

    TabLine      { StatusLineNC },
    TabLineSel   { bg = hsl('#1C1C1C'), fg = hsl('#F0F0EE'), gui = 'bold' },
    TabLineFill  { bg = hsl('#181818') },

    Pmenu        { bg = hsl('#181818'), fg = hsl('#C8C8C8') },
    PmenuSel     { bg = hsl('#252525'), fg = hsl('#A8C8A8'), gui = 'bold' },
    PmenuSbar    { bg = hsl('#252525') },
    PmenuThumb   { bg = hsl('#7A9E7A') },

    FoldColumn   { fg = hsl('#383838') },
    Folded       { bg = hsl('#202020'), fg = hsl('#505050'), gui = 'italic' },

    -- ── diagnostics ─────────────────────────────────────────────────────
    DiagnosticError { fg = hsl('#A87878') },
    DiagnosticWarn  { fg = hsl('#A89878') },
    DiagnosticInfo  { fg = hsl('#7A9E7A') },
    DiagnosticHint  { fg = hsl('#8A9E8A') },

    DiagnosticVirtualTextError { fg = hsl('#A87878'), gui = 'italic' },
    DiagnosticVirtualTextWarn  { fg = hsl('#A89878'), gui = 'italic' },
    DiagnosticVirtualTextInfo  { fg = hsl('#7A9E7A'), gui = 'italic' },
    DiagnosticVirtualTextHint  { fg = hsl('#8A9E8A'), gui = 'italic' },

    DiagnosticUnderlineError { gui = 'undercurl' },
    DiagnosticUnderlineWarn  { gui = 'undercurl' },

    -- ── nvim-tree ───────────────────────────────────────────────────────
    NvimTreeNormal           { bg = hsl('#181818'), fg = hsl('#C8C8C8') },
    NvimTreeFolderIcon       { fg = hsl('#7A9E7A') },
    NvimTreeFolderName       { fg = hsl('#888888') },
    NvimTreeOpenedFolderName { fg = hsl('#A8C8A8'), gui = 'bold' },
    NvimTreeRootFolder       { fg = hsl('#7A9E7A'), gui = 'bold' },
    NvimTreeIndentMarker     { fg = hsl('#2A2A2A') },
    NvimTreeGitDirty         { fg = hsl('#A89878') },
    NvimTreeGitNew           { fg = hsl('#7A9E7A') },

    -- ── git signs ───────────────────────────────────────────────────────
    sym("GitSignsAdd")    { fg = hsl('#7A9E7A') },
    sym("GitSignsChange") { fg = hsl('#8A9E8A') },
    sym("GitSignsDelete") { fg = hsl('#A87878') },
  }
end)

return theme
