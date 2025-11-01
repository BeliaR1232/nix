{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    obsidian
    telegram-desktop
    bitwarden-desktop
    feishin
    pavucontrol

    # CLI utils
    brightnessctl # управление яркостью
    fzf
    ntfs3g
    ripgrep
    udiskie
    unzip
    yt-dlp # скачивает из youtube и т.д.
    ffmpeg
    ffmpegthumbnailer
    zip
    jq # json-парсер
    playerctl

    #Dev
    uv
    rustup
    ruff
    python313
    nil
    nixfmt-rfc-style

    # WM stuff
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    dconf

    # Other
    bemoji
    swww
    hyprshot
  ];
}
