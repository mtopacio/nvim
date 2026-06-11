-- https://github.com/saghen/blink.indent

return {
  'saghen/blink.indent',
  opts = {
    static = {
      enabled = true,
      char = '▎',                        -- the indent guide character
      highlights = { 'BlinkIndent' },    -- single color guides
    },
    scope = {
      enabled = true,
      char = '▎',
      -- rainbow-style colors for the current scope
      highlights = { 
	--'BlinkIndentOrange', 
        --'BlinkIndentViolet', 
	'BlinkIndentBlue' 
      },
    },
  },
}
