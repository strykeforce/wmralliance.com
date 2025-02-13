{ flake, ... }:
{
  config,
  lib,
  pkgs,
  ...
}:
let
  inherit (pkgs) system;
in
{
  services.nginx = {
    enable = true;
    virtualHosts."www.wmralliance.com" = {
      serverAliases = [
        "wmralliance.com"
        "wmralliance.strykeforce.org"

      ];
      locations."/".alias = "${flake.packages.${system}.wmralliance}/";
    };
  };
}
