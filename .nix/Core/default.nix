{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ./Audio
    ./Bootloader
    ./Display
    ./Greeter
    ./Hardware
    ./Networking
    ./Programs
    ./Security
    ./Services
    ./System
    ./Users
  ];
}
