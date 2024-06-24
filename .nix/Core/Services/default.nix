{ pkgs, ... }: 
{
  services = {
      gnome.gnome-keyring.enable = true;
      dbus.enable = true;
      fstrim.enable = true;
  };
}