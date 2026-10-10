{ config, lib, ... }: {
  options.dzu.shell.enableAllModules = lib.mkOption {
    description = "Enable all modules (e. g. direnv) in the config";
    type = lib.types.bool;
    default = false;
  };
}
