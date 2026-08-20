class Cheese < Formula
  desc "Kaas. Now available online"
  homepage "https://git.dupunkto.org/~dupunkto/cheese"

  url "https://repo.dupunkto.org/cheese-r2.2f6c685.tar.gz"
  version "r2.2f6c685"
  sha256 "4ca1bb36f9a6580276a7bf25162f9231f7b121ed29459f988a1ee0508e894232"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/cheese.git", branch: "trunk"

  depends_on "python@3.14"

  def install
    bin.install "main.py" => "cheese"
  end
end
