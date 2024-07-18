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
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  xdg.portal.config.common.default = [ "*" ];
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages =  with pkgs; [
    hyprlandPlugins.hycov
    hyprlandPlugins.hyprexpo
    hyprlandPlugins.hyprspace
    hyprlandPlugins.hyprgrass
    hyprpaper
    brightnessctl
    wlsunset
  ];
}