{ pkgs, ... }:
{
  programs.dconf.enable = true;
  programs.ssh.startAgent = true;
  programs.fish.enable = true;
}