{
  pkgs,
  ...
}:
{
  
  home.packages = with pkgs; [
    brightnessctl
    kdePackages.dolphin
    grimblast
  ];

  wayland.windowManager.hyprland.enable = true;
  services.hyprpolkitagent.enable = true;
  services.mako.enable = true;
}
