---@type MappingsTable
local M = {}

-- M.general = {
--   n = {
--     [";"] = { ":", "enter command mode", opts = { nowait = true } },
--   },
-- }

-- more keybinds!
M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>f."] = {
      function()
        require("telescope").extensions.live_grep_args.live_grep_args {
          vimgrep_arguments = {
            "rg",
            "--no-ignore",
            -- NvChad defaults
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
        }
      end,
      "Live grep, including .gitignore",
    },
  },
}

return M
