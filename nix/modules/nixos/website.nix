{
  config,
  lib,
  ...
}:
{
  options.wmra.website = {
    package = lib.mkOption {
      type = lib.types.package;
    };
  };

  config = {
    services.nginx = {
      enable = true;
      virtualHosts."www.wmralliance.com" = {
        serverAliases = [
          "wmralliance.com"
          "wmralliance.strykeforce.org"

        ];
        locations."/".alias = "${config.wmra.website.package}/";
      };
    };
  };
}
