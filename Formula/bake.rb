class Bake < Formula
  desc "Bash-based Makefile replacement"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r558.7ae2c0b.tar.gz"
  sha256 "dfbf8ec029325775389ccf6d1e649581772d730c35069a53151a56f023c140bd"
  version "r558.7ae2c0b"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/bake"
    bin.install_symlink "bake" => "shake"
  end
end
