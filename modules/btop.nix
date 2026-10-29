{ config, lib, ... }:
let
  cfg = config.dzu.btop;
in
{
  options.dzu.btop = {
    enable = lib.mkOption {
      description = "Enable btop";
      type = lib.types.bool;
      default = true;
    };
  };
  config = lib.mkIf cfg.enable {
    programs.btop = {
      enable = true;
    };
  };
}
