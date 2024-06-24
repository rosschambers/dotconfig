{ pkgs, ... }: 
{

  programs.dconf.enable = true;
  
  environment.systemPackages =  with pkgs; [
    home-manager
  ];

  # home-manager.users.ixiri = {
  #   /* The home.stateVersion option does not have a default and must be set */
  #   home.stateVersion = "18.09";
  #   programs.git = {
  #     enable = true;
  #     userName  = "ixiri";
  #     userEmail = "ross.a.chambers@gmail.com";
  #   };
  #   programs.dconf.enable = true;

  #   programs.zsh = {
  #     enable = true;
  #     enableCompletion = true;
  #     autosuggestion.enable = true;
  #     syntaxHighlighting.enable = true;

  #     shellAliases = {
  #       ll = "ls -la";
  #       update = "sudo nixos-rebuild switch";
  #     };
  #   };
  # };
}