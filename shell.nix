{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = with pkgs; [
    hugo

    nodejs
    go_1_21
    # air
    gopls
    gopkgs
    go-tools
  ];

  hardeningDisable = [ "all" ];
}
