# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ ];

  boot.initrd.availableKernelModules = [ "ata_piix" "mptspi" "uhci_hcd" "ehci_pci" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/d7732984-3738-49a4-9254-74505eb52057";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/9fdd884b-0c8c-4905-a6c3-557bb5362666"; }
    ];

}
