{ config, lib, ... }:
let
	cfg = config.dzu.nvim;
in {
	config = lib.mkIf cfg.enable {
		programs.nvf.settings.vim = {
			options.autoindent = true;
			options.tabstop = 2;
			options.shiftwidth = 2;
		};
	};
}
