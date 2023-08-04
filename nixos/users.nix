{ pkgs, ... }: {
  users.users.user = {
    isNormalUser = true;
    description = "user";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    shell = pkgs.fish;
    packages = with pkgs;
      [
        #  firefox
        #  kate
        #  thunderbird
      ];
  };
  environment.shells = [ pkgs.bash pkgs.fish ];

}
