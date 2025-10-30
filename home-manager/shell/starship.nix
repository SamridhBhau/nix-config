{
  ...
}:
{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

       character = {
        success_symbol = "[➜](#9ece6a)";
       };
    };
  };
}
