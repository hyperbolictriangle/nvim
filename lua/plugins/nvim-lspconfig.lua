return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Set different settings for different languages' LSP.
        -- Support List: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
        -- not sure why I am still keeping the empty configs
        vim.lsp.config("bashls", {})
        vim.lsp.enable("bashls")
        vim.lsp.config('clangd', {})
        vim.lsp.enable('clangd')
        vim.lsp.config("rust_analyzer", {})
        vim.lsp.enable("rust_analyzer")
        vim.lsp.config("ocamllsp", {
            cmd = { 'ocamllsp' },
            filetypes = { "ocaml", "menhir", "ocamlinterface", "ocamllex", "reason", "dune" },

        })
        vim.lsp.enable("ocamllsp")
        vim.lsp.config("pylsp", {
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
        vim.lsp.enable("pylsp")
        vim.lsp.config("lua_ls", {
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
        vim.lsp.enable("lua_ls")
        vim.lsp.config("gopls", {
            settings = {
                gopls = {
                    analyses = {
                        unusedparams = true,
                        staticcheck = true,
                        gofumpt = true,
                    },
                },
            },
        })
        vim.lsp.enable("gopls")
    end,
}
