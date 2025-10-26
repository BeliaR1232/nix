{
  programs.ranger = {
    enable = true;
    mappings = {
      e = "edit";

      ec = "compress";
      ex = "extract";

      b = "fzm";
    };

    settings = {
      preview_images = true;
      preview_images_method = "ueberzug";
      draw_borders = true;
      w3m_delay = 0;
    };

    extraConfig = ''
      default_linemode devicons2
    '';

    plugins = [
      {
        name = "ranger-archives";
        src = builtins.fetchGit {
          url = "https://github.com/maximtrp/ranger-archives";
          ref = "master";
          rev = "0b1cfa9a77412c3b51da5b1b213c672227f9fbb4";
        };
      }
      {
        name = "ranger-devicons2";
        src = builtins.fetchGit {
          url = "https://github.com/cdump/ranger-devicons2";
          ref = "master";
          rev = "94bdcc19218681debb252475fd9d11cfd274d9b1";
        };
      }
    ];
  };

  home.file.".config/ranger/commands.py".text = "from plugins.ranger_udisk_menu.mounter import mount";
}
