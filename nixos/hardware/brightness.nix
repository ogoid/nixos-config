{
  powerManagement.resumeCommands = ''
    for file in /sys/class/backlight/*/brightness; do
      brightness=$(<$file)
      echo $brightness > $file
    done
  '';
}
