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
    brightnessctl
    fzf
    grimblast
    ntfs3g
    microfetch
    ripgrep
    udiskie
    unzip
    yt-dlp
    zip
    nil
    nixfmt-rfc-style
    jq
    playerctl
    # v2ray

    #Dev
    uv
    rustfmt
    cargo
    rustc
    ruff
    python313

    # WM stuff
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    swww
    hyprshot
  ];
}
