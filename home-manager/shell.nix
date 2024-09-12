{ pkgs, ... }: {

  programs.bash.enable = true;

  programs.fish = {
    enable = true;
    # plugins = with pkgs.fishPlugins; [ grc plugin-git done ];
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };
}
