class Textutils < Formula
  desc "POSIX shell text utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r558.7ae2c0b.tar.gz"
  sha256 "dfbf8ec029325775389ccf6d1e649581772d730c35069a53151a56f023c140bd"
  version "r558.7ae2c0b"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "coreutils"
  depends_on "shellutils"

  def install
    bin.install "bin/digest"
    bin.install "bin/lower"
    bin.install "bin/upper"
    bin.install "bin/trim"
    bin.install "bin/sluggify"
  end
end
