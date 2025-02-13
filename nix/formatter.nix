{ inputs, pkgs, ... }:
inputs.treefmt-nix.lib.mkWrapper pkgs {
  projectRootFile = "flake.nix";

  programs.just.enable = true;
  programs.mdformat.enable = true;
  programs.mdformat.settings.number = true;
  programs.nixfmt.enable = true;
  programs.prettier.enable = true;

  settings = {
    global.excludes = [
      "*.{age,gif,png,svg,env,envrc,gitignore,pickle}"
      ".idea/*"
      ".vscode/*"
    ];
  };
}
