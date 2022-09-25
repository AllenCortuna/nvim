
require("notify").setup({
	stages = "slide",
	background_colour = "FloatShadow",
	timeout = 3000,
  width = 10,
})

require("notify").history()
vim.notify = require("notify")
