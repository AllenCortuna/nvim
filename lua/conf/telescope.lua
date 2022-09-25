

require("telescope").setup({
	defaults = {
    prompt_prefix = " ",
    selection_caret = "❯ ",
    path_display = { "truncate" },
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },

	},
	pickers = {
		find_files = {
			theme = "dropdown", --dropdown cursor ivy
		},
	},
	extensions = {
	},
})
require("telescope").load_extension("luasnip")
