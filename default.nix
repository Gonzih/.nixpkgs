{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchGit = builtins.fetchGit;
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
