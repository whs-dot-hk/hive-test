let
  inherit (config._module.args) user;
in {
  shellAliases = {
    u = user.username;
  };
}
