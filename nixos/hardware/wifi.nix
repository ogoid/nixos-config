{
  # https://www.reddit.com/r/archlinux/comments/kuy8fq/wifi_not_working_iwlwifi_failed_with_error_110/

  boot.extraModprobeConfig = ''
  install iwlwifi echo 1 > /sys/bus/pci/devices/0000\:00\:14.3/reset ; \
        /sbin/modprobe --ignore-install iwlwifi
  '';
}