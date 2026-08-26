class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r571.b05f573.tar.gz"
  sha256 "410e2066967e301451c90971e7d10c1a8fd3bd2bd1d82740bf4fdd44d4ceb750"
  version "r571.b05f573"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
