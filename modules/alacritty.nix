{ config, lib, ... }:
let
  cfg = config.dzu.alacritty;
in
{
  options.dzu.alacritty = {
    enable = lib.mkOption {
      description = "Enable Alacritty";
      type = lib.types.bool;
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    programs.alacritty = {
      enable = true;
      package = null;
      settings = {
        font = {
          # normal = {
          # family = lib.mkForce "JetBrainsMono Nerd Font";
          # style = "Regular";
          # };
          size = lib.mkForce 10;
        };

        window = {
          decorations = "None";
          opacity = lib.mkForce 0.6;
          blur = true;
        };
      };
    };
  };
}
