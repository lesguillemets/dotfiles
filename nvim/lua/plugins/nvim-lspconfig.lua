return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({'rust-analyzer', 'pyright', 'hls', 'lua_ls', 'marksman'})
	end
}


