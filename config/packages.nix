# NOTE: Add channels first!
# sudo nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixos-20.09 nixos
# sudo nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixos-unstable nixos-unstable
# sudo nix-channel --update

{ config, pkgs, ... }:

let 
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {

  nix.binaryCaches = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" "https://cache.nixos.org/" ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    # zsh
    pkgs.exa
    pkgs.bat
    pkgs.lazygit
    pkgs.starship
    unstable.zinit

    # terminal
    pkgs.alacritty

    # fzf
    pkgs.fzf
    pkgs.ripgrep
    pkgs.silver-searcher

    # ranger
    pkgs.ranger
    pkgs.atool
    pkgs.zip
    pkgs.unzip
    pkgs.zip
    pkgs.unar
    pkgs.unrar
    pkgs.p7zip
    pkgs.exiftool
    pkgs.transmission
    pkgs.odt2txt
    pkgs.xlsx2csv
    pkgs.catdoc
    pkgs.pandoc
    pkgs.wpsoffice
    pkgs.jq
    pkgs.mediainfo
    pkgs.trash-cli
    pkgs.fontforge
    pkgs.w3m
    pkgs.feh
    pkgs.ueberzug
    pkgs.mpv
    pkgs.imagemagick
    pkgs.ffmpegthumbnailer

    # audio
    pkgs.pulseaudio

    # backlight
    pkgs.xorg.xbacklight

    # network
    pkgs.libnma
    pkgs.networkmanager

    # notification
    pkgs.libnotify
    pkgs.dunst

    # lock
    pkgs.i3lock-color
    pkgs.betterlockscreen

    # screenshot
    pkgs.maim
    pkgs.flameshot

    # bar
    pkgs.polybar

    # launcher
    pkgs.rofi

    # vim
    pkgs.neovim
    pkgs.vimPlugins.vim-plug

    pkgs.yadm
  ];
}
