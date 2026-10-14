{
  config,
  lib,
  ...
}:
let
  cfg = config.dzu.niri;
in
{
  options.dzu.niri = {
    enable = lib.mkOption {
      description = "Enable Niri config (package should be installed externally)";
      type = lib.types.bool;
      default = true;
    };
  };
  config = lib.mkIf cfg.enable {
    home.file = {
      ".config/niri/config.kdl".source = assets/niri-config.kdl;
      ".config/noctalia/settings.toml".source = assets/noctalia-config.toml;
    };
  };
}
