class Shellutils < Formula
  desc "POSIX shell utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r481.2878b49.tar.gz"
  sha256 "2815a3005c7301d6cab182e399dcbdf884acc8854acc527517dfdc3bd3c6124b"
  version "r481.2878b49"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/required"
    bin.install "bin/has"
    bin.install "bin/prompt"
    bin.install "bin/err"
    bin.install "bin/quiet"
    bin.install "bin/sluggify"
  end
end
