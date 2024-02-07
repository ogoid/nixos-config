{ inputs, modulesPath, ... }: {
  imports = with inputs.hardware.nixosModules; [
    "${modulesPath}/installer/scan/not-detected.nix"
    common-pc-laptop
    common-pc-ssd
    common-hidpi
    common-cpu-intel
    common-gpu-intel
    #  common-gpu-nvidia

    # ./tpm.nix

    ./wifi.nix

    ./brightness.nix

    ./kernel.nix
    ./keyboard.nix
    ./audio.nix
    ./video.nix
    ./network.nix
    ./fingerprint.nix
  ];
}
