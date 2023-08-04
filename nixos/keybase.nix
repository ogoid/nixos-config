{ pkgs, ... }: {
  environment.systemPackages = [ pkgs.keybase pkgs.keybase-gui ];

  services.keybase.enable = true;
  services.kbfs.enable = true;
}
