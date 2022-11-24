with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "shell-node-environment";
  env = buildEnv {
    name = name;
    paths = buildInputs;
  };

  shellHook = ''
    export PS1="[env:nodejs|\[\e[1m\]\w\[\e[0m\]]$ "
  '';

  buildInputs = [
    nodejs
  ];
}
