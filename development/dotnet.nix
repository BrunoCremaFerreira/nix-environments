with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "shell-dotnet-environment";
  env = buildEnv {
    name = name;
    paths = buildInputs;
  };

  shellHook = ''
    export PS1="[env:dotnet|\[\e[1m\]\w\[\e[0m\]]$ "
  '';

  buildInputs = [
    dotnet-sdk
    vscode
  ];
}
