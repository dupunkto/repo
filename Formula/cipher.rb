class Cipher < Formula
  desc "Zero-knowledge secret sharing CLI"
  homepage "https://git.dupunkto.org/~dupunkto/cipher"

  url "https://repo.dupunkto.org/cipher-r24.99681c4.tar.gz"
  version "r24.99681c4"
  sha256 "8631540298cb5b46c71a1215a7f85cfb2700de7b55944bad4904d702af1db292"

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
