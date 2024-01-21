# flake.nix
{
  description = "Network Analysis Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in pkgs.mkShell {
        buildInputs = [
          pkgs.tcpdump
          pkgs.wireshark
        ];

        shellHook = ''
          echo "Entering the development environment!"
	  pkexec tcpdump -U -s0 -w - | wireshark -k -i -  
        '';
      };

    devShells = rec {
      default = self.devShell.x86_64-linux;
    };
  };
}
