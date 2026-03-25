local mappings = require("config.mappings")

return {
  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup({})
      mappings.search_replace()
    end,
  },
}
