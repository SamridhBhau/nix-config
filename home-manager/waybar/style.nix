{...}:
let 
  colors = {
    font = "Jetbrains Mono Nerd";
    font_size = "13px";
    font_weight = "bold";
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
  programs.waybar.style = with colors; ''
    * {
      font-family: ${font};
      font-size: ${font_size};
      font-weight: ${font_weight};
      border: none;
      padding: 0;
      margin: 0;
    }
    window#waybar {
      background: ${bg};
    }

    #workspaces button {
      color: ${cyan};
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px
    }

    #workspaces button.active {
      color: ${purple};
    }

    #tray {
      margin-right: 10px;
    }
    
    #network, #battery, #wireplumber {
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px;
      color: ${blue};
      background-color: ${bg};
    }

    #clock {
      color: ${blue}; 
      background-color: ${bg};
    }

  '';
}
