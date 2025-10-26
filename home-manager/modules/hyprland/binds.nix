{ pkgs, ... }:
let
  wallpaper_script = pkgs.writeShellScriptBin "change_wallpaper" ''
    #!/bin/sh
    WALLPAPER_DIR="$HOME/Wallpapers"
    CURRENT_WALL=$(swww query | grep -Po "\w+\.(jpg|png)" | shuf -n 1)

    WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

    swww img "$WALLPAPER"

  '';
in
{
  home.packages = [ wallpaper_script ];
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod, RETURN, exec, $terminal"
      "$mainMod, B, exec, $browser"
      "$mainMod, T, exec, telegram-desktop"
      "$mainMod, C, exec, $editor"
      "$mainMod, O, exec, obsidian"
      "$mainMod, M, exec, $player"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, P, exec, $password_manager"
      "$mainMod, W, exec, change_wallpaper"
      "$mainMod, D, exec, $menu --show drun"
      "$mainMod, Q, killactive,"

      "SHIFT, PRINT, exec, hyprshot --freeze -m region"
      "$mainMod, PRINT, exec, hyprshot -m window"
      ", PRINT, exec, hyprshot --mode output --mode active"

      # Moving focus
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      # Moving windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"

      # Resizeing windows                   X  Y
      "$mainMod CTRL, left,  resizeactive, -60 0"
      "$mainMod CTRL, right, resizeactive,  60 0"
      "$mainMod CTRL, up,    resizeactive,  0 -60"
      "$mainMod CTRL, down,  resizeactive,  0  60"

      # Switching workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"


      # Moving windows to workspaces
      "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
      "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
      "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
      "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
      "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
      "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
      "$mainMod SHIFT, 7, movetoworkspacesilent, 7"

      # Scratchpad
      "$mainMod,       S, togglespecialworkspace,  magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"
    ];

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    # Laptop multimedia keys for volume and LCD brightness
    bindel = [
      ",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      "$mainMod, bracketright, exec, brightnessctl s 10%+"
      "$mainMod, bracketleft,  exec, brightnessctl s 10%-"
    ];

    # Audio playback
    bindl = [
      ", XF86AudioNext,  exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay,  exec, playerctl play-pause"
      ", XF86AudioPrev,  exec, playerctl previous"
    ];
  };
}
