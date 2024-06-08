{ buildNpmPackage }:
let
  appSource = fetchGit {
    url = "https://github.com/pbthapa/dummy-node-app.git";
    ref = "master";
    rev = "1092f6e42bfbdb0d009788743ae49ad0e893e153";
  };
in
buildNpmPackage rec {
  version = "1.0.0";
  name = "dummy-node-app-${version}";
  src = appSource;
  npmDepsHash = "sha256-RQaFGY6Jfgo0FYap0+G6Jf2Uhtf14b7Mn5pAULwq1AI=";
  dontNpmBuild = true;
  installPhase = ''
    mkdir $out
    npm install
    npm run start
  '';
}
