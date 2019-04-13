{
  allowUnfree = true;
  packageOverrides = pkgs : with pkgs; rec {
    mc-config = import ./mc-config {
      inherit stdenv;
    };

    all = with pkgs; buildEnv {
      name = "all";

      paths = [
        mc-config
      ];
    };
  };
}
