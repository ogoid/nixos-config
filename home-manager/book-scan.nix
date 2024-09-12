{ pkgs, ... }: {
  home.packages = with pkgs; [
    calibre
    imagemagick
    img2pdf
    ocrmypdf
    parallel
    poppler_utils
    qpdf
    scantailor-advanced
    ghostscript
  ];
}
