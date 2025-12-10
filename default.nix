let 
  nixpkgs = fetchTarball "https://github.com/NixOs/nixpkgs/tarball/nixos-25.05";
  pkgs = import nixpkgs { config ={}; overlays = []; };
in
{
  aretext = pkgs.callPackage ./aretext.nix {};
}
