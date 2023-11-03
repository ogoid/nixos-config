{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (python3.withPackages (p: with p; [ polars pandas matplotlib scikit-learn ]))
    julia
 ];
}