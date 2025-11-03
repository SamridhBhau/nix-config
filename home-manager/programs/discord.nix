{
  inputs,
  ...
}:
{
  imports = [inputs.nixcord.homeModules.nixcord];

  programs.nixcord = {
    enable = true;
    config.plugins = {
      fakeNitro.enable = true;
      fixImagesQuality.enable = true;
    };
  };
}
