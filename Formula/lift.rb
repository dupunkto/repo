class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r569.aa0d046.tar.gz"
  sha256 "c7eeeab1f16062ed7cd37242c8788978ecad45802831ff599c09cfb39915f8e4"
  version "r569.aa0d046"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
