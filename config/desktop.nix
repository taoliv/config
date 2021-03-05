{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    autorun = true;
    
    displayManager = {
      defaultSession = "none+xmonad";
      lightdm.enable = true;
    };

    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
    };
  };
}
