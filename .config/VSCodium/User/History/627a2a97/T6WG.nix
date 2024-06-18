{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" ];
  imports =
    [ # Include the results of the hardware scan.
      #./hardware-configuration.nix
      ./packages
    ];
