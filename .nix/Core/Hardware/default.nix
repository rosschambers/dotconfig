{ pkgs, ... }:
{  
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.enableRedistributableFirmware = true;
  hardware.opengl.extraPackages = with pkgs; [   
  ];

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings.General.Experimental = true;
  };
}