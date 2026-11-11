class Sec < Formula
  desc "Password manager written in Bash"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r642.f581e9a.tar.gz"
  sha256 "319d3fd53b71db83328e35b27779ad95136294b038bdaf4eeb2d93112229f602"
  version "r642.f581e9a"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "arg"
  depends_on "bash"
  depends_on "gnupg"
  depends_on "shellutils"

  def install
    bin.install "bin/sec"
    bin.install "bin/secq"
    bin.install "bin/secv"
  end
end
