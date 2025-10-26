{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    zsh-powerlevel10k
  ];
  home.file.".p10k.zsh".text = builtins.readFile ./p10k.zsh;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
    shellAliases = {
      la = "ls -la";

      r = "ranger";
      v = "nvim";
      se = "sudoedit";

      va = "source ./.venv/bin/activate";

      major = "bluetoothctl connect 1C:6E:4C:84:2A:95";
      buds = "bluetoothctl connect 28:6F:40:3E:E5:02";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      ".." = "cd ..";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
    initContent = ''
      if uwsm check may-start > /dev/null && uwsm select; then
          exec systemd-cat -t uwsm_start uwsm start -S hyprland-uwsm.desktop
      fi
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };
}
