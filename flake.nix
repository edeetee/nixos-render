{
	inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
#inputs.flamenco.url = "path:/home/edeetee/dev/flamenco-nix";

	outputs = { self, nixpkgs, ... }@attrs: {
		nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit attrs; };
			modules = [ ./configuration.nix ];
		};
	};
}
