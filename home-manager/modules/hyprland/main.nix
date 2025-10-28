{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = [
        "eDP-1,1920x1080@60,0x0,1"
        "HDMI-A-1,2560x1440@140,1920x0,1"
      ];
      "$mainMod" = "SUPER";
      "$terminal" = "foot";
      "$browser" = "chromium";
      "$editor" = "codium";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";
      "$player" = "feishin";
      "$password_manager" = "bitwarden";

      exec-once = [
        "waybar"
        "udiskie"
        "swww-daemon"
      ];

      general = {
        gaps_in = 2;
        gaps_out = 5;

        border_size = 3;

        "col.active_border" = "rgb(054c76)";
        "col.inactive_border" = "rgba(595959aa)";

        resize_on_border = false;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 5;

        active_opacity = 0.9;
        inactive_opacity = 0.8;

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 1;
          passes = 4;

          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;
        bezier = [
          "wind, 0.05, 0.9, 0.1, 1.05"
          "winIn, 0.1, 1.1, 0.1, 1.1"
          "winOut, 0.3, -0.3, 0, 1"
          "liner, 1, 1, 1, 1"
        ];
        animation = [
          "windows, 1, 6, wind, slide"
          "windowsIn, 1, 6, winIn, slide"
          "windowsOut, 1, 5, winOut, slide"
          "windowsMove, 1, 5, wind, slide"
          "border, 1, 1, liner"
          "borderangle, 1, 35, liner, loop"
          "fade, 1, 10, default"
          "workspaces, 1, 7, wind"
          "specialWorkspace, 1, 5, wind, slidevert"
        ];
      };

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 1;
        disable_hyprland_logo = false;
      };

      windowrulev2 = [
        "workspace 7, class:feishin"
        "workspace 2, class:chromium"
        "workspace 4, class:(bitwarden)"
        "opacity 0.9, class:codium"
        "opacity 0.9, class:(telegram)"
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      workspace = [
        "1, monitor:$monitor_2, persistent=true"
        "2, monitor:$monitor_2, persistent=true"
        "3, monitor:$monitor_2"
        "4, monitor:$monitor_2"
        "5, monitor:$monitor_2"
        "6, monitor:$monitor_1"
        "7, monitor:$monitor_1"
      ];
      layerrule = [
        "blur,waybar"
        "animation none, selection"
        "animation popin, swaync-notification-window"
        "animation none, hyprpicker"
      ];
    };
  };
}
