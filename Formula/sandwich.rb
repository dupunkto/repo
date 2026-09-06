class Sandwich < Formula
  desc "Common development toolchain"
  homepage "https://git.dupunkto.org/~dupunkto/sandwich"

  url "https://repo.dupunkto.org/sandwich-r3.204a8be.tar.gz"
  version "r3.204a8be"
  sha256 "bfd3802988777340631a2e63a820b5a6214ad894d8b73903e56a6d523f682c8f"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/sandwich.git", branch: "trunk"

  depends_on "bake"

  def install
    (share/"bake/layers").install "bun", "elixir", "flask", "node", "phoenix", "php", "python"
  end
end
