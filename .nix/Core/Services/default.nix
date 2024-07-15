{ pkgs, ... }: 
{
  services = {
      system76-scheduler.enable = true;
      gnome.gnome-keyring.enable = true;
      dbus.enable = true;
      fstrim.enable = true;
      power-profiles-daemon.enable = true;
      devmon.enable = true;
      gvfs.enable = true;
      udisks2.enable = true;
      blueman.enable = true;
      yubikey-agent.enable = true;
  };

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = true;
  };

   services.avahi = {
    enable = true;
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      userServices = true;
    };
  };

  services.sunshine = {
    enable = true;
    openFirewall = true;
    autoStart = true;
  };
}
