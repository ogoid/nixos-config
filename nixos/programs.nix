{ pkgs, inputs, ... }: {
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    gparted
    compsize
    tree
    file
    unzip
    nixfmt-classic
    nixd
    cachix
    chromium
    nerdfonts
    wireguard-tools
    wgcf
    anytype

    home-manager

    inputs.agenix.packages."${system}".default

    inputs.nix-alien.packages."${system}".nix-alien
  ];

  # programs.command-not-found.enable = false;
  # programs.nix-index = {
  #   enable = true;
  #   enableFishIntegration = true;
  #   enableBashIntegration = true;
  # };

  programs.firefox = {
    enable = true;
    preferences = {
      # "zoom.minPercent" = 150;
      "media.ffmpeg.vaapi.enabled" = true;
      "gfx.webrender.all" = true;
    };
  };

  programs.chromium = {
    enable = true;
    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # ublock-origin
      "gcbommkclmclpchllfjekcdonpmejbdp" # https everywhere
    ];
  };

  # programs.light.enable = true;

  programs.mtr.enable = true;

  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  programs.vim.enable = true;
  programs.vim.defaultEditor = true;

  programs.nix-ld.enable = true;

  programs.git.enable = true;
  programs.git.lfs.enable = true;
}
