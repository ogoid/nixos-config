{ pkgs, ... }: {
  # networking.firewall.allowedUDPPorts = [2408];

  environment.systemPackages = [ pkgs.cloudflare-warp ];

  systemd.services.warp-svc = {
    after = [ "network-online.target" "systemd-resolved.service" ];
    wants = [ "network-online.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      # DynamicUser = true;
      ExecStart = "${pkgs.cloudflare-warp}/bin/warp-svc";
      StateDirectory = "cloudflare-warp";
      # User = "warp";
      # User = "user";
      # Umask = "0077";
      # # Hardening
      LockPersonality = true;
      PrivateMounts = true;
      PrivateTmp = true;
      ProtectControlGroups = true;
      ProtectHostname = true;
      ProtectKernelLogs = true;
      ProtectKernelModules = true;
      ProtectKernelTunables = true;
      ProtectProc = "invisible";
      # ProtectSystem = "full"; # needs write access to /etc
      RestrictNamespaces = true;
      RestrictRealtime = true;
    };
  };
}
