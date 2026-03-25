local mappings = require("config.mappings")

return {
  {
    "ibhagwan/fzf-lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "otavioschwanck/fzf-lua-enchanted-files",
    },
    opts = {
      -- winopts = {
      --   width = 0.9,
      --   preview = {
      --     horizontal = "right:50%", -- if you dont use ultrawide, you can decrease this percent
      --     flip_columns = 160,
      --     winopts = {
      --       number = false,
      --     },
      --   },
      -- },
      -- keymap = {
      --   fzf = {
      --     ["ctrl-q"] = "select-all+accept",
      --   },
      -- },
      files = {
        -- use oldfiles history, so recent files appear on top
        oldfiles = true,
        -- optional: limit how many recent files are remembered
        oldfiles_limit = 100,
      },
    },
    keys = mappings.fzf_lua(),
  },
}
