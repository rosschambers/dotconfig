{
  pkgs,
  inputs,
  ...
}:
{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.theme = "Elegant";

  environment.systemPackages = [
    pkgs.elegant-sddm
    (pkgs.elegant-sddm.override {
        themeConfig.General = {
        background = "${pkgs.nixos-artwork.wallpapers.simple-dark-gray-bottom.gnomeFilePath}";
      };
    })
  ];
}
