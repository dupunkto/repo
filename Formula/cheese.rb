class Cheese < Formula
  desc "Kaas. Now available online"
  homepage "https://git.dupunkto.org/~dupunkto/cheese"

  url "https://repo.dupunkto.org/cheese-r1.1eaec60.tar.gz"
  version "r1.1eaec60"
  sha256 "c397bf42d1f6d45e68179a90934095c6d409779efe82102737ad4afbf13f5d15"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/cheese.git", branch: "trunk"

  depends_on "python@3.14"

  def install
    bin.install "main.py" => "cheese"
  end
end
