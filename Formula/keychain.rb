class Keychain < Formula
  desc "GPG passphrase manager"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r481.2878b49.tar.gz"
  sha256 "2815a3005c7301d6cab182e399dcbdf884acc8854acc527517dfdc3bd3c6124b"
  version "r481.2878b49"

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
