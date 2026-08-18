class Textutils < Formula
  desc "POSIX shell text utility scripts"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r524.f70d817.tar.gz"
  sha256 "48ca631eae5c1b187c85d1b4af62bed229bd9b6710d5cd965e81787a740e0028"
  version "r524.f70d817"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "coreutils"
  depends_on "shellutils"

  def install
    bin.install "bin/digest"
    bin.install "bin/lower"
    bin.install "bin/upper"
    bin.install "bin/trim"
    bin.install "bin/sluggify"
  end
end
