.PHONY: update
update:
	cp configuration.nix /etc/nixos/configuration.nix
	nixos-rebuild switch

clean:
	nix-collect-garbage
