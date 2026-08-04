class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r521.b061d3c.tar.gz"
  sha256 "941169f6d42ff768506f9c4ed3d6a278024ce7ac1b97b300973853d53215f418"
  version "r521.b061d3c"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
