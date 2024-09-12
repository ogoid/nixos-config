{ inputs, ... }: {
  home-manager = {
    verbose = true;
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users.user = {
      home.stateVersion = "23.05";

      systemd.user.startServices = "sd-switch";

      home = {
        username = "user";
        homeDirectory = "/home/user";
      };

      imports = [
        (import ./shell.nix)
        (import ./programs.nix)
        (import ./vscode.nix)
        (import ./book-scan.nix)
        (import ./machine-learning.nix)
      ];

      nixpkgs = {
        # You can add overlays here
        overlays = [
          # If you want to use overlays exported from other flakes:
          # neovim-nightly-overlay.overlays.default

          # Or define it inline, for example:
          # (final: prev: {
          #   hi = final.hello.overrideAttrs (oldAttrs: {
          #     patches = [ ./change-hello-to-hi.patch ];
          #   });
          # })
        ];
      };
    };
  };
}
