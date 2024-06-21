{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
  ];
  programs.hyprland.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  environment.systemPackages =  with pkgs; [
    brightnessctl
  ];
}