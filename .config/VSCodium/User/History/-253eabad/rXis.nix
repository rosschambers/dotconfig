{ config, pkgs, ... }:
{
  environment.systemPackages =  with pkgs; [
    warp-terminal
  ];
}
