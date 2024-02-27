{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.distrobox ];

  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };

    containers = {
      cdi.dynamic.nvidia.enable = true;

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
