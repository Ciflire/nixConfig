
# hello.nix
{ lib
, stdenv
, fetchFromGithub
, buildGoModule
}:

stdenv.mkDerivation {
  name = "hello";

  src = fetchzip {
    url = "https://ftp.gnu.org/gnu/hello/hello-2.12.1.tar.gz";
    sha256 = "0xw6cr5jgi1ir13q6apvrivwmmpr5j8vbymp0x6ll0kcv6366hnn";
  };
}
