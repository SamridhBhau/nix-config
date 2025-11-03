{
  inputs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ]; 

  programs.nixvim.imports = [ 
    ./nixvim.nix 
    ./options.nix 
    ./plugins
    ./keymappings.nix
  ];

  programs.nixvim = {
    colorschemes = {
      tokyonight = {
        enable = true;
        settings = {
          style = "night";
        };
      };
    };
  };
}
