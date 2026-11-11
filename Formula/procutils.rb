class Procutils < Formula
  desc "Shell process utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r646.7cc2855.tar.gz"
  sha256 "0f848e5c376fcc7f9b2a98ac3fb99fdc56756e6e0cff713d9a0449c904e8f073"
  version "r646.7cc2855"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/spawn"
    bin.install "bin/log"
  end
end
