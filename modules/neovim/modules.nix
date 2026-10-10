{ config, lib, pkgs, ... }:
let
	cfg = config.dzu.nvim;
in {
	config = lib.mkIf cfg.enable {
		programs.nvf.settings.vim = {
			autocomplete.nvim-cmp.enable = true;
			git.enable = true;
			statusline.lualine.enable = true;
			telescope.enable = true;
			binds.whichKey.enable = true;
		};
	};
}
