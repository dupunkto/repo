class Recipe < Formula
  desc "Dependency-based command runner"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r571.b05f573.tar.gz"
  sha256 "410e2066967e301451c90971e7d10c1a8fd3bd2bd1d82740bf4fdd44d4ceb750"
  version "r571.b05f573"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/recipe"
  end
end
