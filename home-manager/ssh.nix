{

  services.ssh-agent = {
    enable = true;
    enableBashIntegration = true;
  };


  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    matchBlocks = {
      "github.com" = {
        hostname = "github.com";
        user = "git";
        addKeysToAgent = "yes";
        identityFile = "~/.ssh/key";
      };
    };


  };
}
