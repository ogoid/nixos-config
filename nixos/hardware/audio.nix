{
  # Mic mute button
  services.udev.extraHwdb = ''
    evdev:name:*:dmi:bvn*:bvr*:bd*:svnASUS*:pn*:*
      KEYBOARD_KEY_ff31007c=f20
  '';

  # options snd_hda_intel power_save=0

  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  #   jack.enable = true;
  # };

  # hardware.pulseaudio.enable = true;

  # hardware.pulseaudio.extraConfig = ''
  # ["session.suspend-timeout-seconds"] = 0
  # '';

  # systemd.targets.sound.unitConfig = {
  #   StopWhenUnneeded = false;
  # };
}
