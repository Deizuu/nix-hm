{ config, lib, ... }:
let
  cfg = config.dzu.tmux;
in
{
  options.dzu.tmux = {
    enable = lib.mkOption {
      description = "Enable tmux";
      type = lib.types.bool;
      default = true;
    };
  };
  config = lib.mkIf cfg.enable {
    programs.tmux = {
      enable = true;
    };
  };
}
