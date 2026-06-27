class Shellutils < Formula
  desc "POSIX shell utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r480.c1c5be8.tar.gz"
  sha256 "302bc9dba408eeb5538134ad161f8c0cc2fdaa2055ecb19c1f570eaa3b7920a3"
  version "r480.c1c5be8"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/required"
    bin.install "bin/has"
    bin.install "bin/prompt"
    bin.install "bin/err"
    bin.install "bin/quiet"
    bin.install "bin/sluggify"
  end
end
