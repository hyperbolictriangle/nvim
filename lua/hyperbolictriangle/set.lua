vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.o.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indentation per programming lang
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "py", "lua" },
    callback = function()
        vim.opt.tabstop = 4      -- the number of visual spaces per TAB
        vim.opt.softtabstop = 4  -- number of spacesin tab when editing
        vim.opt.shiftwidth = 4   -- insert 4 spaces on a tab
        vim.opt.expandtab = true -- tabs are spaces, mainly because of python
    end,
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "ocaml" },
    callback = function()
        vim.opt.tabstop = 2      -- the number of visual spaces per TAB
        vim.opt.softtabstop = 2  -- number of spacesin tab when editing
        vim.opt.shiftwidth = 2   -- insert 2 spaces on a tab
        vim.opt.expandtab = true -- tabs are spaces, mainly because of python
    end,
})

vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true  -- but make it case sensitive if an uppercase is entered
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 40

-- for auto-completions,
-- display a popup menu (menu),
-- even with a single match (menuone),
-- without automatically selecting the first option (noselect),
-- and without inserting any text until you explicitly confirm it (noinsert).
vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]
