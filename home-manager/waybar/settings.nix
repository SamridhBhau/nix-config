{
  ...
}:
let 
  colors = {
    bg = "#1a1b26"; 
    blue = "#7aa2f7";
    cyan = "#7dcfff";
    green = "#9ece6a";
    orange = "#ff9e64";
    purple = "#9d7cd8";
    red = "#f7768e";
  };
in
{
  programs.waybar.settings = with colors; {
    mainBar = {
      layer = "top";
      position = "top";
      height = 25;

      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [ "wireplumber" "network"  "battery" "tray" ];


      "hyprland/workspaces" = {
        active-only = false;
        format = "{icon}";
        format-icons = {
          "1" = " ";
          "2" = " "; 
          "3" = " ";
          "4" = " ";
        };

        persistent-workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
        };
      };

      clock = {
        format = "{:%H:%M}  ";
        tooltip-format =  "<tt><small>{calendar}</small></tt>";
        calendar = {
          mode = "month";
          weeks-pos = "right";
          format = {
            days =       "<span color='#7dcfff'><b>{}</b></span>";
            weeks =      "<span color='#9ece6a'><b>W{}</b></span>";
            weekdays =   "<span color='#7aa2f7'><b>{}</b></span>";
            today=      "<span color='#ff9e64'><b><u>{}</u></b></span>";
          };
        };
      };
      
      network = {
        format-wifi = "<span foreground='${purple}'> </span>  {signalStrength}%";
        tooltip-format-wifi = "{essid} ({signalStrength}%)  ";
        format-disconnected = "";
        tooltip-format-disconnected = "Disconnected";
      };

      battery = {
        format = "<span foreground='${orange}'>{icon}</span> {capacity}%";
        format-icons = [
          " "
          " "
          " "
          " "
          " "
        ];
        format-time = "{H}h{M}m";
        tooltip = true;
        tooltip-format = "{time}";
      };

      tray = {
        spacing = 8;
      };

      
      wireplumber = {
        format = "<span foreground='${red}'>{icon}</span> {volume}%";
        format-icons = [
          " "
          " "
        ];

        format-muted = " ";
        scroll-step = 2;
      };
    };
  };
}
