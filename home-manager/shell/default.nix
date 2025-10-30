{
  ...
}:
{
  imports = [
    ./bash.nix
    ./quitcd.nix
    ./starship.nix
  ]; 

  home.file.".config/alacritty/tokyonight.toml".source = ./tokyonight.toml; 
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 14;
        normal = { family = "Hack Nerd Font"; style = "Regular"; };
        bold = { family = "Hack Nerd Font"; style = "Bold";};
        italic = { family = "Hack Nerd Font"; style = "Italic";};
      };
      general.import = [ "~/.config/alacritty/tokyonight.toml" ];
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

}
