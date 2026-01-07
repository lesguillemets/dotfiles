return {
	'nvim-telescope/telescope.nvim',
	-- tag = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'telescope find files'})
	end
}
