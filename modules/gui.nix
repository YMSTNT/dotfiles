{ pkgs, ... }:

{
  programs.gnupg.agent.enable = true;

  hm.home.packages = (with pkgs; [
    anki-bin
    cryptomator
    gimp
    lifeograph
    master.hifile
    obs-studio
    onlyoffice-bin
    openshot-qt
    plex-media-player
    protonvpn-gui
    qalculate-gtk
    rquickshare
    telegram-desktop
    tenacity
    vlc
    winetricks
    wineWowPackages.staging
    xournalpp
  ]) ++ (with pkgs; [
    # Electron apps
    anytype
    beeper
    discord
    drawio
    element-desktop
    lunatask
    obsidian
  ]) ++ (with pkgs; [
    # GTK apps
    celluloid
    collision
    czkawka
    eyedropper
    fragments
    hieroglyphic
    mission-center
    pika-backup
    planify
    ptyxis
    rnote
  ]);

  nixpkgs.config.permittedInsecurePackages = [
    "openjdk-19-ga"
    "temurin-bin-19.0.2"
  ];
}
