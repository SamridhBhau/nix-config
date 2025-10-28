{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
#Telescope seach files
  {
    action = ":Telescope find_files<CR>";
    key = "<leader>sf";
    options = {
      silent = true;
      noremap = true;
      desc = "Seach files";
    };
  }
  ];

}
