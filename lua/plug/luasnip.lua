   require("luasnip.loaders.from_vscode").lazy_load()
   require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.luasnippets_path or "" }

