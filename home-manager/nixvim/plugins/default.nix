{
  imports = [
    ./telescope.nix
    ./lsp.nix
    ./completion.nix
    ./oil.nix
  ];

  plugins = {
    web-devicons.enable = true;
  };
}
