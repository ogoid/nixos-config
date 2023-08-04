{ pkgs, ... }: {
  imports = [
    ./boot.nix
    ./hardware

    ./nix-config.nix

    ./users.nix
    ./locale.nix
    ./xserver.nix

    ./programs.nix

    ./virtualisation.nix

    ./warp.nix

    # ./theme.nix

    ./keybase.nix
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}
