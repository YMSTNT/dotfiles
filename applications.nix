{ config, pkgs, home-manager, ... }:

let
  unstable = import <nixos-unstable> { config = config.nixpkgs.config; };
  nix-software-center = import
    (pkgs.fetchFromGitHub {
      owner = "vlinkz";
      repo = "nix-software-center";
      rev = "0.1.2";
      sha256 = "xiqF1mP8wFubdsAQ1BmfjzCgOD3YZf7EGWl9i69FTls=";
    })
    { };
in
{
  imports = [
    /etc/nixos/games.nix
    ./matlab.nix
  ];

  programs.gnupg.agent.enable = true;

  home-manager.users.ymstnt = {
    programs.firefox = {
      enable = true;
      package = pkgs.firefox-devedition;
    };

    home.packages = with pkgs; [
      brave
      unstable.thunderbird-bin
      (unstable.discord.override { withOpenASAR = true; withVencord = true; })
      onlyoffice-bin
      unstable.obsidian
      unstable.anytype
      vlc
      syncthing
      evolution
      cryptomator
      gimp
      telegram-desktop
      obs-studio
      openshot-qt
      unstable.lunatask
      wineWowPackages.staging
      winetricks
      nix-software-center

      gnome.gnome-tweaks
      gnome.dconf-editor
      pkgs.gnome-extension-manager
      celluloid
      czkawka
      unstable.fragments
      unstable.collision
      unstable.eyedropper
      unstable.raider
      unstable.newsflash
      unstable.pika-backup
      unstable.mission-center
    ];
  };
}
