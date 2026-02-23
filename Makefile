.PHONY: update
update:
	cp configuration.nix /etc/nixos/configuration.nix
	nixos-rebuild switch

update-bootloader: update
	nixos-rebuild --install-bootloader boot

clean:
	nix-collect-garbage
	nix-env --delete-generations +3
