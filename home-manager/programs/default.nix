{
  pkgs,
  pkgs-stable,
  ...
}:{
  imports = [
    ./common.nix
    ./dev.nix
    ./nnn.nix
  ];
}
