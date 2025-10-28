{ username, ... }:

{
  imports = [
    ./programs
    ./shell
    ./hyprland
    ./nixvim
    ./rofi
    ./waybar
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
  };


  programs.git = {
    enable = true;
    settings = {
      user.name = "sam";
      user.email = "sb.samridhbhau@gmail.com";
    };
  };


  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
