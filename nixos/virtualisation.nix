{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.distrobox ];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    enableNvidia = true;
  };

  virtualisation.containers.policy = {
    default = [ { type = "insecureAcceptAnything"; } ];
    transports = {
      docker-daemon = {
        "" = [ { type = "insecureAcceptAnything"; } ];
      };
    };
  };
}
