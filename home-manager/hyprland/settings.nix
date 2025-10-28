{
  ...
}:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";
    }; 

    input = {
      kb_options = "ctrl:nocaps";

      touchpad = {
        natural_scroll = true;
      };
    };
    misc = {
      disable_hyprland_logo = true;   
    };

    xwayland  = {
      force_zero_scaling = true;
    };
  };
}
