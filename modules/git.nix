{
  programs.git = {
    enable = true;
    package = null;
    settings.user = {
      signingkey = "BA9073490CDC3330BCDC910522BB7AABE71CEAA3";
      email = "contact.yen578@passinbox.com";
      name = "Ianis-Cosmin";
    };
    settings.commit = {
      gpgsign = true;
    };
    settings.tag = {
      gpgsign = true;
    };
  };
}
