class Bake < Formula
  desc "Bash-based Makefile replacement"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r1.0000000.tar.gz"
  sha256 "2a8d432e133f23c5e3cab3b86c01853ec8b518f298e82a3e8fcb26dc45c0ad7a"
  version "r1.0000000"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/bake"
  end
end
