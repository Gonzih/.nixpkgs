{ stdenv, fetchGit }:

stdenv.mkDerivation {
  name = "mc-config";
  builder = ./builder.sh;
  src = fetchGit {
    url = "git@github.com:Gonzih/.mc.git";
  };
}
