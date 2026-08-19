class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r558.7ae2c0b.tar.gz"
  sha256 "dfbf8ec029325775389ccf6d1e649581772d730c35069a53151a56f023c140bd"
  version "r558.7ae2c0b"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
