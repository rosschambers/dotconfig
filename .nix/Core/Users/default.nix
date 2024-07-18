{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz";
in
{
  programs.dconf.enable = true;
  imports = [
    (import "${home-manager}/nixos")
  ];

  users.users.ixiri = {
    isNormalUser = true;
    description = "ixiri";
    shell = pkgs.bash;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.ixiri = {
    home.enableNixpkgsReleaseCheck = false;

    services.blueman-applet.enable = true;
    services.network-manager-applet.enable = true;

    gtk = {
      enable = true;
      theme = {
        package = pkgs.rose-pine-gtk-theme;
        name = "rose-pine";
      };
      iconTheme.name = "Papirus-Dark";
      iconTheme.package = pkgs.papirus-icon-theme;

      font.name="FiraCode";
    };

    programs.bash = {
      enable = true;
    };

    programs.readline.extraConfig = "
      set show-all-if-ambiguous on
      set menu-complete-display-prefix on
      TAB: menu-complete
      set colored-completion-prefix on
      set colored-stats on
    ";

    programs.oh-my-posh = {
      enable = true;
      useTheme = "jandedobbeleer";
    };

    programs.git = {
      enable = true;
      userName  = "Ross Chambers";
      userEmail = "ross.a.chambers@gmail.com";
    };
    /* The home.stateVersion option does not have a default and must be set */
    home.stateVersion = "18.09";
    /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */
  };
}