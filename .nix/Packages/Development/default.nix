{ config, pkgs, ... }:
{
  environment.systemPackages =  with pkgs; [
    nodejs
    node2nix
  ];
}
