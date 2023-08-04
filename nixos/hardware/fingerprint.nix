{
  # unfortunately libfprintd doesn't work correctly with this device.

  # lsusb output:
  # Bus 001 Device 004: ID 04f3:0c4f Elan Microelectronics Corp. ELAN:Fingerprint

  # https://gitlab.freedesktop.org/libfprint/wiki/-/wikis/Unsupported-Devices

  # driver source:
  # https://gitlab.freedesktop.org/libfprint/libfprint/-/blob/master/libfprint/drivers/elan.c
  
  # services.fprintd.enable = true;
  # services.fprintd.tod.enable = true;
  # services.fprintd.tod.driver = pkgs.libfprint-2-tod1-vfs0090;
  # services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix;
  # services.fprintd.tod.driver = pkgs.libfprint-tod;
}
