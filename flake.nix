{
  inputs.hive.url = "github:divnix/hive";
  inputs.home-manager.url = "github:nix-community/home-manager";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/master";
  inputs.std.url = "github:divnix/std";

  outputs = {
    hive,
    self,
    std,
    ...
  } @ inputs:
    hive.growOn {
      inherit inputs;
      cellsFrom = ./comb;
      cellBlocks =
        #
        with hive.blockTypes;
        with std.blockTypes;
        #
          [
            (functions "homeProfiles")
            homeConfigurations
          ];
    }
    {homeConfigurations = hive.collect self "homeConfigurations";};
}
