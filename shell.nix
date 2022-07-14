let
  pinnedNixpkgs = import (builtins.fetchTarball {
    name = "nixpkgs-21.11";
    url = https://github.com/NixOS/nixpkgs/archive/21.11.tar.gz;
  }) {};
in
{ pkgs ? pinnedNixpkgs }:
let
in
pkgs.stdenv.mkDerivation rec {
  name = "sipjs-shell";
  buildInputs = [
    pkgs.nodejs-16_x
  ];
}
