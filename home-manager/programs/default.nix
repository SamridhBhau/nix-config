{
  pkgs,
  inputs,
  ...
}:{
  imports = [
    ./common.nix
    ./dev.nix
    ./nnn.nix
    ./discord.nix
    ./zathura
  ];

  home.packages = [
      inputs.awww.packages.${pkgs.system}.awww
  ];
}
