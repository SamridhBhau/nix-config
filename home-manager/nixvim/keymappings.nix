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

  {
    action = ":Telescope live_grep<CR>";
    key = "<leader>sg";
    options = {
      silent = true;
      noremap = true;
      desc = "Telescope Grep";
    };
  }
  ];

}
