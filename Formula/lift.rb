class Lift < Formula
  desc "Remote deployment manager for containers and static files"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r481.2878b49.tar.gz"
  sha256 "2815a3005c7301d6cab182e399dcbdf884acc8854acc527517dfdc3bd3c6124b"
  version "r481.2878b49"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "yq"

  def install
    bin.install "bin/lift"
    bin.install "bin/lift-remote"
  end
end
