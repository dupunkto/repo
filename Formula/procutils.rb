class Procutils < Formula
  desc "Shell process utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r613.85b5b80.tar.gz"
  sha256 "c28d655d69a913f4dbd6fd07195a7761944a5e75a539054d0329020a9651c829"
  version "r613.85b5b80"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/spawn"
    bin.install "bin/log"
  end
end
