class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r485.4e1f5c6.tar.gz"
  sha256 "f2d0d4bf8806fc41686eb64e49a83a3acb503d5031d9aabdd965b0600edf40c7"
  version "r485.4e1f5c6"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
