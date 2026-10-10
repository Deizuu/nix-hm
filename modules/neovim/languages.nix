{ config, lib, pkgs, ... }:
let
	cfg = config.dzu.nvim;
in {
	config = lib.mkIf cfg.enable {
		home.packages = [ pkgs.tree-sitter ];
		programs.nvf.settings.vim = {
			languages = {
				enableFormat = true;
				enableTreesitter = true;

				bash.enable = true;
				clang.enable = true;
				css.enable = true;
				html.enable = true;
				json.enable = true;
				nix.enable = true;
				python.enable = true;
				typescript.enable = true;
			};
		};
	};
}
