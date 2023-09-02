{
  inputs,
  cell,
  ...
}: let
  inherit (inputs) home-manager;
  inherit (inputs) nixpkgs;

  user = {username = "whs";};
in {
  test = {
    bee.home = home-manager;
    bee.pkgs = nixpkgs;
    bee.system = "x86_64-linux";
    imports = [
      cell.homeProfiles.test
    ];
    _module.args.user = user;
    home = rec {
      homeDirectory = "/home/${username}";
      stateVersion = "23.05";
      username = user.username;
    };
  };
}
