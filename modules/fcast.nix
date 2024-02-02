{ config, inputs, outputs, pkgs, ... }:
{
  imports = [
    "${inputs.nixpkgs-develop}/nixos/modules/programs/fcast-receiver.nix" # TODO: change this to nixpkgs-master once https://github.com/NixOS/nixpkgs/pull/283513 is merged
  ];

  nixpkgs.overlays = [ outputs.overlays.unstable-packages ];

  programs.fcast-receiver = {
    enable = true;
    openFirewall = true;
    package = pkgs.develop.fcast-receiver;
  };
}