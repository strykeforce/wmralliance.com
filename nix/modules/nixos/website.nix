{ perSystem, ... }:
{
  services.nginx = {
    enable = true;
    virtualHosts."wmra.strykeforce.org" = {
      serverAliases = [
        # "wmralliance.com"
        "pallas.lan.j3ff.io"
      ];
      location."/".alias = "${perSystem.self.wmralliance}";
    };
  };
}
