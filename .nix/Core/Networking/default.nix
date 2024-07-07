{ pkgs, ... }: 
{
  networking = {
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPortRanges = [
        { from = 30000; to = 60000; }
      ];
      allowedUDPPortRanges = [
        { from = 30000; to = 60000; }
      ];
    };
  };
  

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}