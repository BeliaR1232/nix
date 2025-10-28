nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount --yes-wipe-all-disks ./hosts/beliar-laptop/disko.nix && \
nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager && \
nix-channel --update && \
nixos-install --flake ./#beliar-laptop && \
echo "Установите пароль для beliar" && \
nixos-enter --root /mnt -c 'passwd beliar'