{ lib, ... }:
{
  programs.alacritty = {
    enable = true;
    # theme = "nightfox";
    theme = "tokyo_night";
    settings = {
      window.opacity = lib.mkForce 0.9;
      window.startup_mode = "Maximized";
      window.padding = {
        x = 10;
        y = 10;
      };
      window.dimensions = {
        columns = 160;
        lines = 80;
      };
      font = {
        builtin_box_drawing = true;
        size = lib.mkForce 18;
        normal = {
          style = lib.mkForce "Bold";
          family = lib.mkForce "FiraCode Nerd Font Mono";
        };
      };
    };
  };
}
