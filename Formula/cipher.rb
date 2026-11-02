class Cipher < Formula
  desc "Zero-knowledge secret sharing CLI"
  homepage "https://git.dupunkto.org/~dupunkto/cipher"

  url "https://repo.dupunkto.org/cipher-r29.76d7a8e.tar.gz"
  version "r29.76d7a8e"
  sha256 "3995ad811d571fdca15a5892d51147e8de0695c2b7397e02f577194f9b8632e4"

  license "Unlicense"

  head "https://git.dupunkto.org/~dupunkto/cipher.git", branch: "trunk"

  depends_on "arg"
  depends_on "jq"
  depends_on "node"
  depends_on "shellutils"
  uses_from_macos "curl"

  def install
    bin.install "bin/cipher"
  end
end
