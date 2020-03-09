# This imports the nix package collection,
# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
    name = "hermes-enviroment";
  
    # The packages in the `buildInputs` list will be added to the PATH in our shell
    buildInputs = with pkgs; [
      python3Packages.discordpy
      python3Packages.twilio
    ];
}
