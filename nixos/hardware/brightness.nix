{
  # brightness level is not being reset correctly after sleep

  powerManagement.resumeCommands = ''
    for file in /sys/class/backlight/*/brightness; do
      brightness=$(<$file)
      echo $brightness > $file
    done
  '';
}
