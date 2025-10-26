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
      "$terminal" = "alacritty";
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

        border_size = 2;

        "col.active_border" = "rgba(DCD7BAff)";
        "col.inactive_border" = "rgba(595959aa)";

        resize_on_border = false;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 5;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

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
        enabled = false;
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
