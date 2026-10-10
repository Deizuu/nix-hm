{ config, lib, ... }:
let
  cfg = config.dzu.shell;
in {
  options.dzu.shell.direnv = {
    enable = lib.mkOption {
      description = "Enable direnv";
      type = lib.types.bool;
      default = cfg.enableAllModules;
    };
  };

  config = lib.mkIf cfg.direnv.enable {
    programs.direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
