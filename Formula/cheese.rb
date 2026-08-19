class Cheese < Formula
  desc "Kaas. Now available online"
  homepage "https://git.dupunkto.org/~dupunkto/cheese"

  url "https://repo.dupunkto.org/cheese-r1.7910419.tar.gz"
  version "r1.7910419"
  sha256 "dd88d5bff9ab6ad75a803c5fef1d810c2846962a9084bc394b9e278e5578124c"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/cheese.git", branch: "trunk"

  depends_on "python@3.14"

  def install
    bin.install "main.py" => "cheese"
  end
end
