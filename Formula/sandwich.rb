class Sandwich < Formula
  desc "Common development toolchain"
  homepage "https://git.dupunkto.org/~dupunkto/sandwich"

  url "https://repo.dupunkto.org/sandwich-r2.5818b6a.tar.gz"
  version "r2.5818b6a"
  sha256 "333f01819656a7b19decd3a186284be02b92d3288e7ab60e647cbb18585968e7"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/sandwich.git", branch: "trunk"

  depends_on "bake"

  def install
    (share/"bake/layers").install "bun", "elixir", "flask", "node", "phoenix", "php", "python"
  end
end
