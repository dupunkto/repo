class Wt < Formula
  desc "Git worktree manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r555.466f0cf.tar.gz"
  sha256 "ff1cf6a906d5ee328572ac9b3e23f7343c7ba727cf91835e24f4d0fe14627379"
  version "r555.466f0cf"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/wt"
  end
end
