{
  description = "Entorno de desarrollo del mod y datapack de Minecraft Biblia";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        # Minecraft 26.x necesita Java 25.
        # Si "jdk25" no existe en tu nixpkgs, busca la version con: nix search nixpkgs jdk
        packages = with pkgs; [
          jdk25
          gradle # solo para crear el wrapper la primera vez; despues usa ./gradlew
          git
          jq
          python3
        ];

        shellHook = ''
          export JAVA_HOME="$(dirname "$(dirname "$(readlink -f "$(command -v java)")")")"
          echo "Java: $(java -version 2>&1 | head -n1)"
        '';
      };
    };
}
