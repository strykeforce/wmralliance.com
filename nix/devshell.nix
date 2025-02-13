{ pkgs }:
pkgs.mkShell {
  # Add build dependencies
  packages = with pkgs; [
    just
    live-server
    nixfmt-rfc-style
    nil
  ];

  # Add environment variables
  env = { };

  # Load custom bash code
  shellHook = ''

  '';
}
