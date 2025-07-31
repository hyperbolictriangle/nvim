return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Set different settings for different languages' LSP.
        -- Support List: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
        local lspconfig = require("lspconfig")

        lspconfig.bashls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.ocamllsp.setup({
            cmd = { 'ocamllsp' },
            filetypes = { "ocaml", "menhir", "ocamlinterface", "ocamllex", "reason", "dune" },

        })
        lspconfig.pylsp.setup({
            settings = {
                -- configure plugins in pylsp
                pylsp = {
                    plugins = {
                        pyflakes = { enabled = false },
                        pylint = { enabled = false },
                        pycodestyle = { enabled = false },
                    },
                },
            },
        })
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim).
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global.
                        globals = { "vim" },
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files.
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier.
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })
    end,
}
