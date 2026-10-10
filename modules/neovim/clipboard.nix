{ config, lib, ... }:
let
	cfg = config.dzu.nvim;
in {
	config = lib.mkIf cfg.enable {
		programs.nvf.settings.vim.clipboard = {
			enable = true;
			providers.wl-copy.enable = true;
		};
	};
}
