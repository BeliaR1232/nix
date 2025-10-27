{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.beliar.extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      ms-python.python
      ms-ceintl.vscode-language-pack-ru
      formulahendry.code-runner
      charliermarsh.ruff
      jnoortheen.nix-ide
      brettm12345.nixfmt-vscode
      # Themes
      silofy.hackthebox
      enkia.tokyo-night
      zguolee.tabler-icons
      catppuccin.catppuccin-vsc-icons
    ];
    profiles.default.userSettings = {
      "window.menuBarVisibility" = "toggle";
      "window.customTitleBarVisibility" = "never";
      "window.titleBarStyle" = "native";
      "telemetry.telemetryLevel" = "off";
    };
    profiles.beliar.userSettings = {
      "telemetry.telemetryLevel" = "off";
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;
      "files.insertFinalNewline" = false;
      "files.autoSave" = "afterDelay";
      "files.autoSaveDelay" = 1000;

      "workbench.colorTheme" = "Tokyo Night";
      # "workbench.colorTheme" = "Tokyo Night Storm";
      # "workbench.colorTheme" = "Hack The Box";
      "workbench.iconTheme" = "catppuccin-latte";
      "workbench.productIconTheme" = "Tabler";
      "workbench.tree.indent" = 9;
      "workbench.layoutControl.enabled" = false;
      "workbench.startupEditor" = "none";
      "workbench.sideBar.location" = "right";
      "workbench.statusBar.visible" = false;
      "workbench.activityBar.location" = "hidden";
      "workbench.tips.enabled" = false;
      "workbench.colorCustomizations" = {
        "editorCursor.background" = "#000000";
        "editorOverviewRuler.wordHighlightStrongForeground" = "#0000";
        "editorOverviewRuler.selectionHighlightForeground" = "#0000";
        "editorOverviewRuler.rangeHighlightForeground" = "#0000";
        "editorOverviewRuler.wordHighlightForeground" = "#0000";
        "editorOverviewRuler.bracketMatchForeground" = "#0000";
        "editorOverviewRuler.findMatchForeground" = "#0000";
        "editorOverviewRuler.modifiedForeground" = "#0000";
        "editorOverviewRuler.deletedForeground" = "#0000";
        "editorOverviewRuler.warningForeground" = "#0000";
        "editorOverviewRuler.addedForeground" = "#0000";
        "editorOverviewRuler.errorForeground" = "#0000";
        "editorOverviewRuler.infoForeground" = "#0000";
        "editorOverviewRuler.border" = "#0000";
      };

      #   "editor.fontFamily" = "JetBrainsMono Nerd Font";
      "editor.fontFamily" = "FiraCode Nerd Font Mono";
      "editor.fontSize" = 14;
      "editor.lineHeight" = 1.5;
      "editor.tabCompletion" = "on";
      "editor.lineNumbers" = "on";
      "editor.minimap.enabled" = false;
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.vertical" = "hidden";
      "editor.renderWhitespace" = "all";
      "editor.tabSize" = 4;
      "editor.detectIndentation" = false;
      "editor.cursorBlinking" = "solid";
      "editor.cursorSmoothCaretAnimation" = "off";
      "editor.cursorStyle" = "line";
      "editor.showFoldingControls" = "never";
      "editor.matchBrackets" = "never";
      "editor.occurrencesHighlight" = "off";
      "editor.overviewRulerBorder" = false;
      "editor.hideCursorInOverviewRuler" = true;
      "editor.stickyScroll.enabled" = false;
      "editor.bracketPairColorization.enabled" = true;

      "[python]" = {
        "editor.formatOnSave" = true;
        "editor.codeActionsOnSave" = {
          "source.organizeImports" = "explicit";
          "source.fixAll" = "explicit";
        };
        "editor.defaultFormatter" = "charliermarsh.ruff";
      };
      "python.analysis.typeCheckingMode" = "basic";
      "python.languageServer" = "Jedi";
      "ruff.lineLength" = 120;
      "ruff.nativeServer" = "on";

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";
      "nix.serverSettings" = {
        "nil" = {
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
        };
      };
      "[nix]" = {
        "editor.defaultFormatter" = "brettm12345.nixfmt-vscode";
      };

      "window.zoomLevel" = 2;
      "window.commandCenter" = false;
      "chat.commandCenter.enabled" = false;

      #   "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";
      "terminal.integrated.fontFamily" = "FiraCode Nerd Font Mono";

      "code-runner.runInTerminal" = true;
      "explorer.confirmDelete" = false;
      "git.confirmSync" = false;
    };
  };
}
