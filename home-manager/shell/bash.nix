{
  ...
}:{

  programs.bash = {
    enable = true;
    enableCompletion = true;
# TODO add your custom bashrc here
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin";
    '';

# set some aliases, feel free to add more or remove some
  };
}
