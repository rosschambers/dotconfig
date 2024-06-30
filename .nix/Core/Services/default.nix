{ pkgs, ... }: 
{
  services = {
      gnome.gnome-keyring.enable = true;
      dbus.enable = true;
      fstrim.enable = true;
  };

  services.devmon.enable = true;
  services.gvfs.enable = true; 
  services.udisks2.enable = true;
  services.flatpak.enable = true;
  services.blueman.enable = true;
}