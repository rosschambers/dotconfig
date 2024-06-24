# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" ];
  imports =
    [ # Include the results of the hardware scan.
      #./hardware-configuration.nix
      ./Packages
      ./Core
    ];

  # services.greetd = {
  #   enable = true;
  #   # settings = rec {
  #   #   default_session = {
  #   #     command = "hyprland";
  #   #     user = "ixiri";
  #   #   };
  #   # };
  # };

  # programs.regreet = {
  #   enable = true;
  #   };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ixiri = {
    isNormalUser = true;
    description = "ixiri";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

}
