{ pkgs, buildNpmPackage }:
let
  appSource = fetchGit {
    url = "https://github.com/pbthapa/dummy-angular-app.git";
    ref = "master";
    rev = "f9a473f41898900244bc1f65b29d4e6d5bf65468";
  };
in
buildNpmPackage rec {
  version = "1.0.0";
  name = "dummy-angular-app";
  src = appSource;
  npmDepsHash = "sha256-v9/XyvohWbv5AYXP2r+alk1VNQ8zoOltxPjky1G6wIA=";
  buildPhase = ''
    export NG_CLI_ANALYTICS="false"
    npm install
    npm run build
    ls
  '';
  makeCacheWritable = true;
  NODE_OPTIONS = "--openssl-legacy-provider";
  npmFlags = [
    "--ignore-scripts"
  ];
  installPhase = ''
    mkdir $out
    cp -r dist/${name} $out
  '';
}
