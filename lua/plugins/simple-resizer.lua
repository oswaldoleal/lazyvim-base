local mappings = require("config.mappings")

return {
  {
    "oswaldoleal/simple-resizer.nvim",
    lazy = false,
    keys = mappings.simple_resizer(),
    opts = {
      resize_step = 2,
    },
  },
}
