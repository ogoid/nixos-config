{ pkgs, lib, ... }: {

  services.xserver.videoDrivers = [ "intel" "nvidia" ];

  hardware = {
    # bumblebee.enable = true;

    opengl = {
      enable = true;
      driSupport = true;
      # driSupport32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver
        vaapiIntel
        vaapiVdpau
        libvdpau-va-gl
      ];
    };
    
    nvidia = {
      nvidiaPersistenced = true;
      powerManagement.enable = lib.mkDefault true;

      modesetting.enable = true;
      prime = {
        # sync.enable = true;
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
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
}
