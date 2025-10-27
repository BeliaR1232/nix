{
  imports = [
    ./binds.nix
    ./hypridle.nix
    ./hyprlock.nix
    ./main.nix
  ];
  programs.hyprland = {
    enable = true;
    withUWSM = true;
   };

  security.pam.services.hyprlock = {};
}
