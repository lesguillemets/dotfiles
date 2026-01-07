return {
	"EdenEast/nightfox.nvim",
	config = function()
		require('nightfox').setup({
			options = {
				transparent = true,
				dim_inactive = true,
			}
		})
	end
}
