let
  inherit (config._module.args) user;
in rec {
  homeDirectory = "/home/${username}";
  stateVersion = "23.05";
  username = user.username;
}
