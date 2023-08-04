{ pkgs, ... }: {
  boot.plymouth.enable = true;

  stylix = {
    image = pkgs.fetchurl {
      url = "https://i.redd.it/yz6ggt7m18l41.png";
      sha256 = "sha256-jB7q1PAMKS0tfk0Ck6pGkbsfwO+7FHwI83dUHO86ftM=";
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/solarized-dark.yaml";

    polarity = "dark";

    targets = {
      gnome.enable = true;
      fish.enable = true;
    };
  };
}
