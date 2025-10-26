{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-that 14d";
  };
}
