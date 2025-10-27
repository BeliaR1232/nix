{
  pkgs,
  stateVersion,
  hostname,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./disko.nix
    ../../nixos/modules
  ];
  environment.systemPackages = [ pkgs.home-manager ];
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
  disko.enableConfig = true;

  # Точки монтирования
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/boot";
    fsType = "vfat";
  };
}
