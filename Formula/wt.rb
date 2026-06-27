class Wt < Formula
  desc "Git worktree manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r481.2878b49.tar.gz"
  sha256 "2815a3005c7301d6cab182e399dcbdf884acc8854acc527517dfdc3bd3c6124b"
  version "r481.2878b49"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/wt"
  end
end
