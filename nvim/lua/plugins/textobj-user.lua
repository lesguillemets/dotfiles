return {
	{
		"kana/vim-textobj-user",
	},
	{
		"rhysd/vim-textobj-wiw",
		dependencies = { "kana/vim-textobj-user" },
		keys = {
			{ "am", mode = {"o", "v"} },
			{ "im", mode = {"o", "v"} },
		}
	},
	{
		"sgur/vim-textobj-parameter",
		dependencies = { "kana/vim-textobj-user" },
		keys = {
			{ "a,", mode = {"o", "v"} },
			{ "i,", mode = {"o", "v"} },
		}
	}
}
