{stdenv, pkgs, lib, fetchgit, buildGoModule, ...}:

buildGoModule rec {
  pname = "superd";
  version = "0.3.2";
  vendorSha256 = "sha256-u9xEtuTqhVjKV29bfwW4tHu3HTk45UqH+yC+XQYQdQA=";

  doCheck = false; # TODO make tests pass

  src = fetchgit {
    url = "https://git.sr.ht/~craftyguy/superd";
    rev = version;
    sha256 = "sha256-yPwenjvSMz2yt8g7WXTrYyhjkZygEPsUKcKCYSj4tDs=";
  };

  meta = with lib; {
    description = "A user service supervisor";
    homepage = "https://git.sr.ht/~craftyguy/superd";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ wentam ];
  };
}
