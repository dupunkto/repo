class Sandwich < Formula
  desc "Common development toolchain"
  homepage "https://git.dupunkto.org/~dupunkto/sandwich"

  url "https://repo.dupunkto.org/sandwich-r1.6b73df9.tar.gz"
  version "r1.6b73df9"
  sha256 "656f3bf5eea31c065139395b804d1fe61662d1de2feb0377787a1421b80d0c3e"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/sandwich.git", branch: "trunk"

  depends_on "bake"

  def install
    (share/"bake/layers").install "bun", "elixir", "flask", "node", "phoenix", "php", "python"
  end
end
