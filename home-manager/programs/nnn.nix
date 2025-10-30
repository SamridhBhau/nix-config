{
  pkgs,
  ...
}:
{
  programs.nnn = {
    enable = true;
    package = (pkgs.nnn.override {
      withNerdIcons = true;
    });

    plugins.src = (pkgs.fetchFromGitHub {
        owner = "jarun";
        repo = "nnn";
        rev = "v5.1";
        hash = "sha256-+2lFFBtaqRPBkEspCFtKl9fllbSR5MBB+4ks3Xh7vp4=";
        }) + "/plugins";

    plugins.mappings = {
      f = "finder";
      c = "cdpath";
      v = "imgview";
    };
  };

}
