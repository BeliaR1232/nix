{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = false;
    packages = with pkgs; [
      nerd-fonts.fira-code
      noto-fonts-emoji
      nerd-fonts.jetbrains-mono
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [
          "FiraCode Nerd Font"
          "Noto Color Emoji"
          "JetBrains Mono Nerd Font"
        ];
        sansSerif = [
          "FiraCode Nerd Font"
          "Noto Color Emoji"
          "JetBrains Mono Nerd Font"
        ];
        monospace = [
          "FiraCode Nerd Font"
          "Noto Color Emoji"
          "JetBrains Mono Nerd Font"
        ];
      };
    };
  };
}
