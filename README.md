1. After a fresh nixos install
1. Install Git: 
    
    `nix-shell -p git`
1. Clone this:
    ```shell
    git init
    git remote add origin https://github.com/rosschambers/dotconfig.git
    git pull origin main --allow-unrelated-histories
    ```
1. Edit `/etc/nixos/configuration.nix`

    It's important to update the hostname and the username
    ```
    { config, pkgs, ... }:
    let hostname="hostname";
    in
    {
    networking.hostName = hostname;
    imports =
        [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
        /home/<username>/.nix/configuration.nix
        ];
    }
    ```


1. Rebuild nixos:

    `sudo nixos-rebuild boot`
1. Reboot

    `reboot`
