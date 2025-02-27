local lualine = require("lualine")

-- Color for highlights
local colors = {
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67'
}
local config = {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    disabled_filetypes = { 'neo-tree' },
    section_separators = { left = '', right = '' },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'lsp_progress' },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_x, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  'lsp_progress',
  -- display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' } },
  -- With spinner
  -- display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' }},
  colors = {
    percentage      = colors.cyan,
    title           = colors.cyan,
    message         = colors.cyan,
    spinner         = colors.cyan,
    lsp_client_name = colors.magenta,
    use             = true,
  },
  separators = {
    component = ' ',
    progress = ' | ',
    -- message = { pre = '(', post = ')' },
    percentage = { pre = '', post = '%% ' },
    title = { pre = '', post = ': ' },
    lsp_client_name = { pre = '[', post = ']' },
    spinner = { pre = '', post = '' },
    message = { commenced = 'In Progress', completed = 'Completed' },
  },
  display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
  timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
  spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
}
lualine.setup(config)
