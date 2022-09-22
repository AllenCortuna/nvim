require("mason").setup({
	ui = {
		border = "none",

		icons = {
			-- The list icon to use for installed packages.◍
			package_installed = "",
			-- The list icon to use for packages that are installing, or queued for installation.
			package_pending = "",
			-- The list icon to use for packages that are not installed.
			package_uninstalled = "",
		},
	},
})
