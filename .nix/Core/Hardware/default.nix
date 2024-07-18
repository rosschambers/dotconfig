{ pkgs, ... }:
{  
  hardware.graphics.enable = true;
  # hardware.opengl.driSupport = true;
  # hardware.opengl.driSupport32Bit = true;
  hardware.enableRedistributableFirmware = true;

  environment.systemPackages = with pkgs; [
    powertop
  ];

  powerManagement.powertop.enable = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings.General.Experimental = true;
  };
}