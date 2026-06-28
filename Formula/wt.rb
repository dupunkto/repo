class Wt < Formula
  desc "Git worktree manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r484.24a1822.tar.gz"
  sha256 "c822f68333d21d52904804aa3bd0090cf9bd87c461a4641858d2d94544816c64"
  version "r484.24a1822"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/wt"
  end
end
