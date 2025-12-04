{
  stdenv,
  fetchgit,
  go,
  buildGoModule
}:
buildGoModule rec {
  pname = "aretext";
  version = "1.5.0";

  nativeBuildInputs = [ go ];

  src = fetchgit {
    url = "https://github.com/aretext/aretext";
    tag = "v${version}";
    sha256 = "sha256-pYU4wIrrVhGLyUKIsVBofxpsPyXvs1HIH/ioz9sTZ6I=";
  };
  vendorHash = "sha256-iLno+/raBA2u7c92FDP31DOw+vWAxgGpQgWWBr9HZs0=";
}
