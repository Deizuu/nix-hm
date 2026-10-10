{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
    polarity = "dark";
    fonts = {
      sansSerif = {
        package = pkgs.fira-sans;
        name = "Fira Sans";
      };
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
    };
  };
}
