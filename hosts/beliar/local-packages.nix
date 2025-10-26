{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    rsync
  ];
}
