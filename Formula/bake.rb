class Bake < Formula
  desc "Bash-based Makefile replacement"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r521.b061d3c.tar.gz"
  sha256 "941169f6d42ff768506f9c4ed3d6a278024ce7ac1b97b300973853d53215f418"
  version "r521.b061d3c"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/bake"
  end
end
