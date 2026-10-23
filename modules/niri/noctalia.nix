{ config, lib, pkgs, ... }:
let
  cfg = config.dzu.niri;
in
{
  config = lib.mkIf cfg.enable {
    home.file."Pictures/Wallpapers/rosepine-arcade-offset.jpg".source = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/rose-pine/wallpapers/refs/heads/main/illustration/arcade%20-%20offset.jpg";
      hash = "sha256-DakCZrHUJsKik0xWxmgDHlccI6GLNUI9x0It0it03+M=";
    };
    programs.noctalia = {
      enable = true;
      package = null;

      settings = {
        wallpaper = {
          enabled = true;
          default.path = "$HOME/Pictures/Wallpapers/rosepine-arcade-offset.jpg";
        };
      };
    };
  };
}
