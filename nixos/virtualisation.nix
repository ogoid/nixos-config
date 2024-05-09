{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.distrobox ];

  hardware.nvidia-container-toolkit.enable = true;

  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };

    containers = {
      policy = {
        default = [ { type = "insecureAcceptAnything"; } ];
        transports = {
          docker-daemon = {
            "" = [ { type = "insecureAcceptAnything"; } ];
          };
        };
      };
    };
  };
}
