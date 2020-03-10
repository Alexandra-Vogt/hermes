# This imports the nix package collection,
# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
    name = "ninshubur-enviroment";
  
    # The packages in the `buildInputs` list will be added to the PATH in our shell
    buildInputs = with pkgs; [
      python3Packages.discordpy
      python3Packages.twilio
      python3Packages.pip
      python3Packages.setuptools
      python3Packages.wheel
      python3Packages.twine
    ];
}
  
# { lib, buildPythonPackage, fetchPypi }:

# buildPythonPackage rec {
#   pname = "hermes";
#   version = "0.0.2";

#   src = fetchPypi {
#     inherit pname version;
#     sha256 = "43c2c9e5e7a16b6c88ba3088a9bfc82f7db8e13378be7c78d6c14a5f8ed05afd";
#   };

#   doCheck = false;
#   propagatedBuildInputs = [python3Packages.discordpy python3Packages.twilio];
    
#   meta = with lib; {
#     homepage = "https://github.com/alexandra-vogt/hermes";
#     description = "List processing tools and functional utilities";
#     license = licenses.bsd3;
#     maintainers = with maintainers; [ fridh ];
#   };
# }
