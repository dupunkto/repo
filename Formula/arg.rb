class Arg < Formula
  desc "POSIX shell argument parser"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r559.4277cf6.tar.gz"
  sha256 "b60864f47edc23a326e79fa249688331d8be34d8fa44710397f9d18c05b5c12e"
  version "r559.4277cf6"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  def install
    bin.install "bin/arg"
  end
end
