{
  ...
}:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "sam";
      user.email = "sb.samridhbhau@gmail.com";
    };

    settings = {
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingkey = "~/.ssh/key.pub";
    };
  };
}
