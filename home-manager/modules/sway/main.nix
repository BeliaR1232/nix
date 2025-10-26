{
  wayland.windowManager.sway = {
    enable = true;

    config = {
      bar = {
        swaybar_command = "waybar";
      };
      output = {
        "eDP-1" = {
          mode = "1920x1080@60Hz";
          pos = "0 0";
          scale = "1";
        };
        "HDMI-A-1" = {
          mode = "2560x1440@140Hz";
          pos = "1920 0";
          scale = "1";
        };
      };
    };
  };
}
