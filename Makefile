update:
	cp configuration.nix /etc/nixos/configuration.nix
	nix-channel --update
	nixos-rebuild switch --upgrade

update-bootloader: update
	nix-channel --update
	nixos-rebuild --install-bootloader boot

clean:
	nix-collect-garbage
	nix-env --delete-generations +3

switch-channel-stable:
	nix-channel --add https://nixos.org/channels/nixos-25.11 nixos

switch-channel-unstable:
	nix-channel --add https://nixos.org/channels/nixos-unstable nixos
