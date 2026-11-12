class Passport < Formula
  desc "Hand a password store over to a phone through a looping QR code"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r647.5e39891.tar.gz"
  sha256 "d3d7fc3bf813ca715760b46881a3c1e7883ab9fd8ff5f8075fe0744eee379b78"
  version "r647.5e39891"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "arg"
  depends_on "bash"
  depends_on "gnupg"
  depends_on "qrencode"
  depends_on "shellutils"

  def install
    bin.install "bin/passport"
  end
end
