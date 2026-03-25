local M = {}

local utils = require("config.utils")
local n = utils.n
local v = utils.v
local i = utils.i

-- Plugin remaps
function M.neo_tree()
  return {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Open Tree" },
    { "<leader>E", "<cmd>Neotree %<cr>", desc = "Open Cur File on Tree" },
  }
end

function M.search_replace()
  n("gq", "<CMD>SearchReplaceSingleBufferCWord<CR>", "Replace word under cursor")
  n("gQ", "<CMD>SearchReplaceSingleBufferCExpr<CR>", "Replace expression under cursor")
end

function M.codeium()
  vim.g.codeium_disable_bindings = 1

  i("<C-j>", function()
    return vim.fn["codeium#Accept"]()
  end, "Accept Codeium")

  i("<C-f>", function()
    return vim.fn["codeium#AcceptNextWord"]()
  end, "Accept Next Word")

  i("<C-l>", function()
    return vim.fn["codeium#AcceptNextLine"]()
  end, "Accept Next Line")

  i("<C-]>", function()
    return vim.fn["codeium#Clear"]()
  end, "Clear Codeium")

  i("<C-u>", function()
    return vim.fn["codeium#Complete"]()
  end, "Autocomplete with codeium")
end

function M.fzf_lua()
  return {
    {
      "<leader><space>",
      function()
        require("fzf-lua-enchanted-files").files()
      end,
      desc = "Files",
    },
    {
      "<leader>sp",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Live Grep",
    },
    {
      "<leader>sh",
      function()
        require("fzf-lua").help_tags()
      end,
      desc = "Help Tags",
    },
    {
      "<leader>sr",
      function()
        require("fzf-lua").oldfiles()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>sw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "Grep word at cursor",
    },
    {
      "<leader>sw",
      function()
        require("fzf-lua").grep_visual()
      end,
      desc = "Grep region",
      mode = "v",
    },
    {
      "<leader>,",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader><cr>",
      function()
        require("fzf-lua").resume()
      end,
      desc = "Resume FZF",
    },
    {
      "<leader><tab>",
      function()
        require("fzf-lua").git_status()
      end,
      desc = "Git Status",
    },
    {
      "<leader>sd",
      function()
        require("fzf-lua").live_grep({ cwd = vim.fn.fnamemodify(vim.fn.expand("%:~:h"), ":.") })
      end,
      desc = "Live Grep On Current Folder",
    },
    {
      "<leader>ss",
      function()
        require("fzf-lua").blines({ previewer = false })
      end,
      desc = "Search on buffer",
    },
    {
      "<leader>so",
      function()
        require("fzf-lua").lines()
      end,
      desc = "Search on open buffers",
    },
    {
      "<leader>sD",
      function()
        require("neomood.fzf-lua-utils").live_grep_on_folder()
      end,
      desc = "Live Grep On Specific Folder",
    },
  }
end

function M.simple_resizer()
  return {
    {
      "<M-<>",
      function()
        require("simple-resizer").resize_left()
      end,
      desc = "Resize Left",
    },
    {
      "<M->>",
      function()
        require("simple-resizer").resize_right()
      end,
      desc = "Resize Right",
    },
    {
      "<M-+>",
      function()
        require("simple-resizer").resize_up()
      end,
      desc = "Resize Up",
    },
    {
      "<M-_>",
      function()
        require("simple-resizer").resize_down()
      end,
      desc = "Resize Down",
    },
  }
end

-- Global remaps
function M.set()
  n("\\", "<cmd>wall<CR>")
  n(",", "<C-w>w")
  n("ge", "<cmd>b#<CR>")
  n("-", "%")
  n("<M-z>", utils.toggle_wrap)
  v("-", "%")
  v("J", ":m '>+1<CR>gv=gv")
  v("K", ":m '<-2<CR>gv=gv")
end

return M
