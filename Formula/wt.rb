class Wt < Formula
  desc "Git worktree manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r480.c1c5be8.tar.gz"
  sha256 "302bc9dba408eeb5538134ad161f8c0cc2fdaa2055ecb19c1f570eaa3b7920a3"
  version "r480.c1c5be8"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/wt"
  end
end
