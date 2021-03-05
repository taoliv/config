{ config, pkgs, ... }:

{
  security.sudo.extraRules = [
    { groups = [ "wheel" ]; commands = [ "ALL" ]; }
  ];

  users.defaultUserShell = pkgs.zsh;

  users.users.taoliv = {
    isNormalUser = true;
    home = "/home/taoliv";
    createHome = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
