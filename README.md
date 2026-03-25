# LazyVim Config

Custom configuration built on [LazyVim](https://www.lazyvim.org/)'s starter template.

---

## Plugins

### UI & Colorschemes
| Plugin | Description |
|--------|-------------|
| `catppuccin/nvim` | Catppuccin theme (latte flavour, installed but inactive) |
| `rebelot/kanagawa.nvim` | Kanagawa theme (installed but inactive) |
| `navarasu/onedark.nvim` | OneDark theme — **active** (warmer style) |
| `folke/which-key.nvim` | Shows pending keybinding completions in a popup |

### Navigation & Files
| Plugin | Description |
|--------|-------------|
| `nvim-neo-tree/neo-tree.nvim` | File tree explorer |
| `ibhagwan/fzf-lua` | Fuzzy finder for files, grep, buffers, and more |
| `otavioschwanck/fzf-lua-enchanted-files` | Enhanced file picker with recent-files ordering |

### Editing
| Plugin | Description |
|--------|-------------|
| `kylechui/nvim-surround` | Add/change/delete surrounding characters |
| `roobert/search-replace.nvim` | Search and replace helpers |
| `oswaldoleal/simple-resizer.nvim` | Resize splits with keyboard shortcuts |

### AI
| Plugin | Description |
|--------|-------------|
| `Exafunction/windsurf.vim` | Codeium/Windsurf AI completions |

### LSP & Syntax
| Plugin | Description |
|--------|-------------|
| `mason-org/mason-lspconfig.nvim` | Auto-installs LSP servers via Mason |
| `neovim/nvim-lspconfig` | LSP configuration |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting, indentation, and folding |
| `RRethy/nvim-treesitter-endwise` | Auto-adds `end` for Ruby, Lua, etc. |
| `nvim-treesitter/nvim-treesitter-textobjects` | Treesitter-based text objects |

### Disabled
| Plugin | Reason |
|--------|--------|
| `akinsho/bufferline.nvim` | Disabled |
| `folke/flash.nvim` | Disabled (keymap conflict with surround) |

---

## LSP Servers (auto-installed)

- `pyright` — Python
- `ts_ls` — TypeScript / JavaScript

---

## Treesitter Parsers (auto-installed)

bash, c, cpp, css, dockerfile, html, java, javascript, json, lua, markdown, python, ruby, scss, solidity, tsx, typescript, vim, yaml

---

## Keybindings

### General

| Mode | Key | Action |
|------|-----|--------|
| n | `\` | Save all files |
| n | `,` | Switch to next window |
| n | `ge` | Switch to previous buffer |
| n/v | `-` | Jump to matching bracket/pair |
| n | `<M-z>` | Toggle line wrap |
| v | `J` | Move selection down |
| v | `K` | Move selection up |

### Neo-tree

| Mode | Key | Action |
|------|-----|--------|
| n | `<leader>e` | Toggle file tree |
| n | `<leader>E` | Reveal current file in tree |

### fzf-lua

| Mode | Key | Action |
|------|-----|--------|
| n | `<leader><space>` | Find files (recent first) |
| n | `<leader>,` | Open buffers |
| n | `<leader><cr>` | Resume last FZF session |
| n | `<leader><tab>` | Git status |
| n | `<leader>sp` | Live grep (project) |
| n | `<leader>sd` | Live grep (current folder) |
| n | `<leader>sD` | Live grep (pick folder) |
| n | `<leader>ss` | Search in current buffer |
| n | `<leader>so` | Search across open buffers |
| n | `<leader>sw` | Grep word under cursor |
| v | `<leader>sw` | Grep selected text |
| n | `<leader>sr` | Recent files |
| n | `<leader>sh` | Help tags |

### Search Replace

| Mode | Key | Action |
|------|-----|--------|
| n | `gq` | Replace word under cursor (single buffer) |
| n | `gQ` | Replace expression under cursor (single buffer) |

### nvim-surround (default mappings)

| Mode | Key | Action |
|------|-----|--------|
| n | `ys{motion}{char}` | Add surround |
| n | `ds{char}` | Delete surround |
| n | `cs{old}{new}` | Change surround |
| v | `S{char}` | Surround selection |

### Codeium / Windsurf (insert mode)

| Mode | Key | Action |
|------|-----|--------|
| i | `<C-j>` | Accept full suggestion |
| i | `<C-f>` | Accept next word |
| i | `<C-l>` | Accept next line |
| i | `<C-]>` | Clear suggestion |
| i | `<C-u>` | Trigger completion |

### Simple Resizer

| Mode | Key | Action |
|------|-----|--------|
| n | `<M-<>` | Resize split left |
| n | `<M->>` | Resize split right |
| n | `<M-+>` | Resize split up |
| n | `<M-_>` | Resize split down |
