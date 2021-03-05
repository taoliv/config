{ config, pkgs, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;
      includeUserConf = true;
    };

    fonts = [
      pkgs.nerdfonts
      pkgs.noto-fonts-emoji
    ];
  };
}
