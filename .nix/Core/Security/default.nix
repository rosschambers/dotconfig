{ pkgs, ... }: 
{
  environment.systemPackages =  with pkgs; [
  ];

  security.sudo.extraConfig = ''
    Defaults        timestamp_timeout=300
  '';
}