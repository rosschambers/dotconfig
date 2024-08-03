{ config, pkgs, ... }:
{
  environment.systemPackages =  with pkgs; [
    warp-terminal
    kitty
    oh-my-posh
    aichat
    wl-clipboard
  ];
}
