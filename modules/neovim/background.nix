{ config, lib, ... }:
let
  cfg = config.dzu.nvim;
in
{
  config = lib.mkIf cfg.enable {
    programs.nvf.settings.vim = {
      highlight = {
        Normal = {
          bg = null;
          ctermbg = null;
        };
        NonText = {
          bg = null;
          ctermbg = null;
        };
      };
    };
  };
}
