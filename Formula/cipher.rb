class Cipher < Formula
  desc "Zero-knowledge secret sharing CLI"
  homepage "https://git.dupunkto.org/~dupunkto/cipher"

  url "https://repo.dupunkto.org/cipher-r26.48db851.tar.gz"
  version "r26.48db851"
  sha256 "680453f4f7a7b1e5489b9490b949d39c95c79288c673fccd980a1ae2b9a7fafe"

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
