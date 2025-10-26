{ homeStateVersion, user, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];
  news.display = "silent";
  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
