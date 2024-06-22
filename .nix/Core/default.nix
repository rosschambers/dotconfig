{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ./Audio
    ./Bootloader
    ./Display
    ./Hardware
    ./Networking
    ./Programs
    ./Security
    ./System
  ];
}