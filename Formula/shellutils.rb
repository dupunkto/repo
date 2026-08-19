class Shellutils < Formula
  desc "POSIX shell utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r558.7ae2c0b.tar.gz"
  sha256 "dfbf8ec029325775389ccf6d1e649581772d730c35069a53151a56f023c140bd"
  version "r558.7ae2c0b"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/required"
    bin.install "bin/has"
    bin.install "bin/prompt"
    bin.install "bin/err"
    bin.install "bin/try"
    bin.install "bin/quiet"
    bin.install "bin/swallow"
  end
end
