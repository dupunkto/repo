class Bake < Formula
  desc "Bash-based Makefile replacement"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r524.f70d817.tar.gz"
  sha256 "48ca631eae5c1b187c85d1b4af62bed229bd9b6710d5cd965e81787a740e0028"
  version "r524.f70d817"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"

  def install
    bin.install "bin/bake"
  end
end
