local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed,
    }
  end
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
    vim.g.gitblame_date_format = '%r' -- relative format
    local git_blame = require 'gitblame'

    require('lualine').setup {
      options = {
        theme = 'tokyonight',
      },
      extensions = { 'oil', 'fugitive' },
      sections = {
        lualine_c = {
          { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
        },
        lualine_a = {
          {
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          },
        },
        lualine_b = { { 'b:gitsigns_head', icon = '' }, { 'diff', source = diff_source } },
      },
    }
  end,
}
