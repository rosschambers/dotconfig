{ config, pkgs, ... }:
{
  environment.systemPackages =  with pkgs; [
    github-desktop
    nodejs
    node2nix
  ];
}
