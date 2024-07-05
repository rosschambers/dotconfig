{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    sddm-chili-theme
    where-is-my-sddm-theme
    elegant-sddm
  ];

  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.theme = "Elegant";

  # environment.systemPackages = [
  #   (pkgs.elegant-sddm.override {
  #       themeConfig.General = {
  #       background = "${pkgs.nixos-artwork.wallpapers.simple-dark-gray-bottom.gnomeFilePath}";
  #     };
  #   })
  # ];
}
# {
#   pkgs,
#   inputs,
#   ...
# }: let
#   tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
#   hyprland = "hyprland";
# in {
#   services.greetd = {
#     enable = true;
#     settings = {
#       default_session = {
#         command = "${tuigreet} --asterisks --user-menu --time --remember --remember-session --sessions ${hyprland}";
#         user = "greeter";
#       };
#     };
#   };

#   # this is a life saver.
#   # literally no documentation about this anywhere.
#   # might be good to write about this...
#   # https://www.reddit.com/r/NixOS/comments/u0cdpi/tuigreet_with_xmonad_how/
#   systemd.services.greetd.serviceConfig = {
#     Type = "idle";
#     StandardInput = "tty";
#     StandardOutput = "tty";
#     StandardError = "journal"; # Without this errors will spam on screen
#     # Without these bootlogs will spam on screen
#     TTYReset = true;
#     TTYVHangup = true;
#     TTYVTDisallocate = true;
#   };
# }