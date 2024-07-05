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

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages =  with pkgs; [
    hyprpaper
    brightnessctl
    wlsunset

    powertop
  ];
}