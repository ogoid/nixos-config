{ pkgs, config, ... }: {

  nix = {
    # package = pkgs.nixFlakes;
    # registry.nixpkgs.flake = pkgs.nixFlakes;
    optimise.automatic = true;
    gc.automatic = true;
    gc.options = "--delete-older-than 5d";
    gc.dates = "weekly";

    settings = {
      trusted-users = [ "root" "user" ];
      experimental-features = [ "nix-command" "flakes" "ca-derivations" ];
      auto-optimise-store = true;

      # substituters = [
      #   "https://cache.nixos.org "
      #   "https://cuda-maintainers.cachix.org"
      #   "https://devenv.cachix.org"
      #   "https://nix-community.cachix.org"
      #   "https://nixpkgs-python.cachix.org"
      #   "https://nrdxp.cachix.org"
      #   "https://numtide.cachix.org"
      # ];
      # trusted-public-keys = [
      #   "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      #   "cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="
      #   "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
      #   "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      #   "nixpkgs-python.cachix.org-1:hxjI7pFxTyuTHn2NkvWCrAUcNZLNS3ZAvfYNuYifcEU="
      #   "nrdxp.cachix.org-1:Fc5PSqY2Jm1TrWfm88l6cvGWwz3s93c6IOifQWnhNW4="
      #   "numtide.cachix.org-1:2ps1kLBUWjxIneOy1Ik6cQjb41X0iXVXeHigGmycPPE="
      # ];
    };
  };
}
