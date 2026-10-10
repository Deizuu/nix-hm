{ config, lib, ... }: let
	cfg = config.dzu.nvim;
in {
	options.dzu.nvim = {
		enable = lib.mkOption {
			description = "Enable Neovim";
			type = lib.types.bool;
			default = true;
		};
		defaultEditor = lib.mkOption {
			description = "Set Neovim as the default editor for the user";
			type = lib.types.bool;
			default = cfg.enable;
		};
	};

	config = lib.mkIf cfg.enable {
		programs.nvf = {
			enable = true;
			defaultEditor = lib.mkIf cfg.defaultEditor true;
			settings.vim = {
				viAlias = true;
				vimAlias = true;
				lsp.enable = true;
        theme.transparent = true;
			};
		};
	};
}
