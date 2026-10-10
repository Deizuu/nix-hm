{ config, lib, ... }:
let
  cfg = config.dzu.shell;
in {
  options.dzu.shell.starship = {
    enable = lib.mkOption {
      description = "Enable Starship";
      type = lib.types.bool;
      default = cfg.enableAllModules;
    };
  };

  config = lib.mkIf cfg.starship.enable {
    programs.starship = {
      enable = true;
      enableZshIntegration = cfg.zsh.enable;
      settings = {
        add_newline = false;

	format = lib.concatStrings [
          "\n"
	  "$username"
	  "$directory"
	  "\n"
	  "$all"
	  "$status"
	  "$shlvl"
	  "$character"
        ];
	username = {
          show_always = true;
	};
	directory = {
          truncate_to_repo = false;
	};
	direnv.disabled = false;
	status = {
          disabled = false;
	  format = "[$symbol]($style)";
	};
	shlvl.disabled = false;
      };
    };
  };
}
