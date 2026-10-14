{ config, lib, ... }:
let
  cfg = config.dzu.shell;
in
{
  options.dzu.shell.zsh = {
    enable = lib.mkEnableOption "Enable zsh";
  };

  config = lib.mkIf cfg.zsh.enable {
    programs.zsh = {
      enable = true;
      package = null;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = ''
        alias ls="ls --color=auto"
        export GPG_TTY=$(tty)
        gpgconf --launch gpg-agent
        gpg-connect-agent updatestartuptty /bye >/dev/null
        export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
      '';
    };
    home.shell.enableZshIntegration = true;
  };
}
