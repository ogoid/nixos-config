{ pkgs, lib, ... }: {

  nixpkgs.config = {
    allowUnfree = true;
    nvidia.acceptLicense = true;
  };

  services.xserver.videoDrivers = [ "intel" "nvidia" ];

  hardware = {
    bumblebee.enable = true;

    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        vaapiIntel
        vaapiVdpau
        libvdpau-va-gl
      ];
    };

    nvidia = {
      open = false;

      nvidiaPersistenced = false;
      powerManagement.enable = lib.mkDefault true;

      modesetting.enable = false;
      # prime = {
      #   # sync.enable = true;
      #   intelBusId = "PCI:0:2:0";
      #   nvidiaBusId = "PCI:1:0:0";
      # };
    };
  };

  environment.systemPackages = with pkgs; [
    vaapiIntel
    vaapi-intel-hybrid
    libva
    libva-utils
    intel-media-driver
    v4l-utils
  ];

  environment.sessionVariables = {
    LD_LIBRARY_PATH = "/run/opengl-driver/lib";
    CUDA_HOME = pkgs.cudatoolkit;
  };
}
