class Shellutils < Formula
  desc "POSIX shell utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r521.b061d3c.tar.gz"
  sha256 "941169f6d42ff768506f9c4ed3d6a278024ce7ac1b97b300973853d53215f418"
  version "r521.b061d3c"

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
