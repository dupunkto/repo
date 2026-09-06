class Keychain < Formula
  desc "GPG passphrase manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r579.2173ef8.tar.gz"
  sha256 "3748dc33c7d5c642e5b99cb77a3d538502e9b0ba3f4e8fbb6050801a3a47f5e2"
  version "r579.2173ef8"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "shellutils"
  depends_on "gnupg"

  def caveats
    "keychain requires Linux with systemd-creds. It will not function on macOS."
  end

  def install
    bin.install "bin/keychain"
  end
end
