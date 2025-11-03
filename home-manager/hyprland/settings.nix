{
  ...
}:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      "col.active_border" = "rgba(122,162,247,1) rgba(157,124,216,1) 90deg";
      "col.inactive_border" = "rgba(595959aa)";
    }; 

    decoration = {
      rounding = 10;
    };

    input = {
      kb_options = "ctrl:nocaps";

      touchpad = {
        natural_scroll = true;
      };
      numlock_by_default = true;
    };
    misc = {
      disable_hyprland_logo = true;   
    };

    xwayland  = {
      force_zero_scaling = true;
    };
  };
}
