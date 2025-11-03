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
    mode = "n";
    options = {
      silent = true;
      noremap = true;
      desc = "Seach files";
    };
  }

  {
    action = ":Telescope live_grep<CR>";
    key = "<leader>sg";
    mode = "n";
    options = {
      silent = true;
      noremap = true;
      desc = "Telescope Grep";
    };
  }
  {
    action = ":Telescope help_tags<CR>";
    key = "<leader>sh";
    mode = "n";
    options = {
      silent = true;
      noremap = true;
      desc = "Telescope help_tags";
    };
  }

  {
    action = ":Oil<CR>";
    key = "-";
    options = {
      silent = true;
      noremap = true;
      desc = "Open Oil";
    };
  }

  ];

}
