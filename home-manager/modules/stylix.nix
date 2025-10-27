{ pkgs, inputs, ... }:
{
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };
    targets = {
      neovim.enable = false;
      waybar.enable = false;
      alacritty.enable = false;
      wofi.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
    };
    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}
