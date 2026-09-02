{ inputs, ... }: {
  flake.typstargs = let
    pkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
  in {
    typstSource = "./main.typ";
    fontPaths = [
      "${pkgs.inter}/share/fonts/truetype"
    ];
    virtualPaths = [
      { dest = "portrait.jpg"; src = ./portrait.jpg; }
    ];
  };
}