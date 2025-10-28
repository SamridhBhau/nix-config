{
  ...
}:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "alacritty";
    "$fileManager" = "dolphin";
    "$menu" = "rofi -show drun";
    bind = [
      "$mod, Return, exec, $terminal"
      "$mod, Q, killactive"
      "$mod, E, exit"
      "$mod, R, exec, $menu"
      "$mod, D, exec, $fileManager"
      "$mod, V, togglefloating"
      "$mod, P, pseudo" 
      "$mod SHIFT, J, togglesplit"
      "$mod SHIFT, L, exec, hyprlock"


      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"

      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"


      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"

      "$mod, mouse_down, workspace, e+1"
      "$mod, mouse_up, workspace, e-1"


      "$mod, F, fullscreen, 0"
      "$mod SHIFT, F, fullscreen, 1"


      # Screenshot
      "$mod, S, exec, grimblast save screen"
      "$mod SHIFT, S, exec, grimblast save area"
    ];

   bindm = [
     "$mod, mouse:272, movewindow"
     "$mod, mouse:273, resizewindow"
   ];

   bindel = [ 
     ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
     ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
     ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
     ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
     ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
     ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
   ];

  };
}
