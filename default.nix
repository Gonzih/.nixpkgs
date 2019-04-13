{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  buildins = pkgs.buildins;
  fetchGit = buildins.fetchGit;
in
rec {
    mc-config = import ./mc-config {
      inherit stdenv fetchGit;
    };

    all = with pkgs; buildEnv {
      name = "all";

      paths = [
        mc-config
      ];
    };
}
