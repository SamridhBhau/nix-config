{
  ...
}:
let
  wallDir = ./wallpapers;
in
{
  home.file."Pictures/wallpapers/wallpapers".source = wallDir;
}
