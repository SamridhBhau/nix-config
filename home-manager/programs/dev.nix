{
  pkgs,
  ... 
}:{
  
  home.packages = with pkgs; [
    codecrafters-cli
  ];
}
