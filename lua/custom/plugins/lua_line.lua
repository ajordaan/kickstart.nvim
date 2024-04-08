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
    local custom_fname = require('lualine.components.filename'):extend()
    local highlight = require 'lualine.highlight'
    local default_status_colors = { saved = '#228B22', modified = '#C70039' }

    function custom_fname:init(options)
      custom_fname.super.init(self, options)
      self.status_colors = {
        saved = highlight.create_component_highlight_group({ bg = default_status_colors.saved }, 'filename_status_saved', self.options),
        modified = highlight.create_component_highlight_group({ bg = default_status_colors.modified }, 'filename_status_modified', self.options),
      }
      if self.options.color == nil then
        self.options.color = ''
      end
    end

    function custom_fname:update_status()
      local data = custom_fname.super.update_status(self)
      data = highlight.component_format_highlight(vim.bo.modified and self.status_colors.modified or self.status_colors.saved) .. data
      return data
    end
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
            custom_fname,
          },
        },
        lualine_b = { { 'b:gitsigns_head', icon = '' }, { 'diff', source = diff_source } },
      },
    }
  end,
}
