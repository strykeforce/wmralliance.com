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
      enableACME = true;
      forceSSL = true;
      serverAliases = [
        "wmralliance.com"
        "wmralliance.strykeforce.org"
      ];
      locations."/".alias = "${flake.packages.${system}.wmralliance}/";
    };
  };

  security.acme.certs."www.wmralliance.com".email = "jeff@j3ff.io";
}
