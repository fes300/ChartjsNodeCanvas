# shell.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs_20
    pkgs.nodePackages.typescript
    pkgs.nodePackages.eslint
    pkgs.nodePackages.prettier
  ];

  shellHook = ''
    export NODE_PATH=
  '';
}
