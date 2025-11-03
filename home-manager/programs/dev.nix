{
  pkgs,
  pkgs-stable,
  ... 
}:{
  
  home.packages = with pkgs; [
    codecrafters-cli
  ];
}
