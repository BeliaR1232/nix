{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        grace = 10;
        hide_cursor = true;
        no_fade_in = false;
      };

      label = [
        {
          monitor = "eDP-1";
          text = "$TIME";
          color = "rgba(220, 215, 186, 0.9)";
          font_size = 95;
          font_family = "FiraCode Nerd Font Mono Bolt";
          position = "0, 180";
          halign = "center";
          valign = "center";
          shadow_passes = 2;
          shadow_size = 1;
        }
        {
          monitor = "eDP-1";
          text = "$LAYOUT[en,ru]";
          font_size = 16;
          color = "rgba(220, 215, 186, 0.9)";
          position = "170, -200";
          halign = "center";
          valign = "center";
        }
      ];
      background = [
        {
          path = "screenshot";
          blur_passes = 2;
          blur_size = 2;
          contrast = 1;
          brightness = 0.8;
          vibrancy = 0.16;
          vibrancy_darkness = 0.1;
        }
      ];

      input-field = [
        {
          monitor = "eDP-1";
          size = "250, 60";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.35;
          dots_center = true;
          fail_text = "WRONG PASSWORD";
          outer_color = "rgba(0, 0, 0, 0)";
          inner_color = "rgba(0, 0, 0, 0.2)";
          font_color = "rgba(220, 215, 186, 0.8)";
          font_family = "FiraCode Nerd Font";
          check_color = "rgb(204, 136, 34)";
          position = "0, -200";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
