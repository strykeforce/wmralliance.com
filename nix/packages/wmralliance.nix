{ pkgs, ... }:
pkgs.stdenvNoCC.mkDerivation {
  name = "wmralliance-site";
  version = "1.0.0";
  src = ../..;
  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
    mkdir -p $out
    cp -r src/* $out/
  '';
}
