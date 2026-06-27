class Shellutils < Formula
  desc "POSIX shell utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r1.0000000.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "r1.0000000"

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
