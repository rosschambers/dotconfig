{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  # boot.plymouth.enable = true;
  # boot.plymouth.theme = "bgrt";
  # boot.initrd.verbose = false;
  # boot.consoleLogLevel = 0;
  # boot.kernelParams = [ "quiet" "udev.log_level=0" ]; 

  boot = {
    kernelParams = [ "quiet" "splash" "rd.udev.log-priority=3" ];
    plymouth.enable = true;
    consoleLogLevel = 0;
    initrd.verbose = false;
  };
}