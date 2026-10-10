{ config, lib, ... }:
let
  cfg = config.dzu.shell;
in {
  options.dzu.shell.zsh = {
    enable = lib.mkEnableOption "Enable zsh";
  };

  config = lib.mkIf cfg.zsh.enable {
    programs.zsh = {
      enable = true;
      # autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
    home.shell.enableZshIntegration = true;
  };
}
