{ pkgs, ... }:
{
  programs.dconf.enable = true;
  programs.ssh.startAgent = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}