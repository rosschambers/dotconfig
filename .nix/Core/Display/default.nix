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
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  environment.systemPackages =  with pkgs; [
    hyprpaper
    brightnessctl
    wlsunset
  ];
}
