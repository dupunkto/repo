class Cipher < Formula
  desc "Zero-knowledge secret sharing CLI"
  homepage "https://git.dupunkto.org/~dupunkto/cipher"

  url "https://repo.dupunkto.org/cipher-r25.1dd3cf0.tar.gz"
  version "r25.1dd3cf0"
  sha256 "9e9acd33a9280e077b23688fa1b1aa76dc11034140d9749539599a707cd9ae1d"

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
