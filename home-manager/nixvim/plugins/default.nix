{
  imports = [
    ./telescope.nix
    ./lsp.nix
    ./completion.nix
  ];

  plugins = {
    web-devicons.enable = true;
  };
}
