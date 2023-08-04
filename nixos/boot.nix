{
  boot = {

    tmp = {
      useTmpfs = false;
      cleanOnBoot = true;
    };

    loader = {
      timeout = 2;
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
      # systemd-boot.configurationLimit = 3;
    };
  };

  fileSystems."/" = {
    device = "/dev/disk/by-label/root";
    fsType = "btrfs";
    options = [ "noatime" ];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/BOOT";
    fsType = "vfat";
  };

  zramSwap.enable = true;
}
