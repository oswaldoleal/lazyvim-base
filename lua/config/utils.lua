local M = {}

function M.n(map, func, desc)
  vim.keymap.set("n", map, func, { silent = true, noremap = true, desc = desc or "" })
end

function M.v(map, func, desc)
  vim.keymap.set({ "v", "x" }, map, func, { silent = true, noremap = true, desc = desc or "" })
end

function M.i(map, func, desc)
  vim.keymap.set("i", map, func, { expr = true, silent = true, desc = desc or "" })
end

function M.toggle_wrap()
  local is_wrapped = vim.opt.wrap:get()

  if is_wrapped then
    vim.opt.wrap = false
    vim.opt.linebreak = false
    vim.opt.breakindent = false
    print("Line Wrap OFF")
  else
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.breakindent = true
    print("Line Wrap ON")
  end
end

return M
