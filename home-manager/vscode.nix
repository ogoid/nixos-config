{ inputs, pkgs, ... }:
let
  system = "x86_64-linux";

  # inherit (pkgs) vscode-extensions;
  vscode-extensions =
    inputs.nix-vscode-extensions
    .extensions."${system}"
    .vscode-marketplace;
in
{

  programs.vscode = {
    enable = true;

    # userSettings = {
    #   "window.zoomLevel" = 1;
    #   "nix.enableLanguageServer" = true;
    #   "nix.serverPath" = "${pkgs.nixd}/bin/nixd";
    #   "terminal.integrated.commandsToSkipShell" =
    #     [ "language-julia.interrupt" ];
    #   "julia.symbolCacheDownload" = true;
    #   "julia.executablePath" = "${pkgs.julia}/bin/julia";
    #   "julia.enableTelemetry" = false;
    # };

    # extensions = with vscode-extensions; [
    #     jnoortheen.nix-ide
    #     julialang.language-julia
    #     mkhl.direnv
    #     arrterian.nix-env-selector
    #   ];
  };

}