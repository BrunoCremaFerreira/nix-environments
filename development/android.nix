with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "shell-android-environment";
  env = buildEnv {
    name = name;
    paths = buildInputs;
  };

  shellHook = ''
    export PS1="[env:android|\[\e[1m\]\w\[\e[0m\]]$ "
    export ANDROID_JAVA_HOME=${pkgs.jdk.home}
    export LD_LIBRARY_PATH=/usr/lib:/usr/lib32
  '';

  buildInputs = [
    android-studio
    vscode
    jdk
  ];
}
