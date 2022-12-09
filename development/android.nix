with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "shell-android-environment";
  env = buildEnv {
    name = name;
    paths = buildInputs;
  };

  shellHook = ''
    export PS1="[env:android|\[\e[1m\]\w\[\e[0m\]]$ "
  '';

  buildInputs = [
    "openjdk-11.0.15+10"
    "android-studio-canary"
  ];
}
