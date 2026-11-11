class Tailshare < Formula
  desc "Easily share files or directories over Tailscale"
  homepage "https://geheimesite.nl"

  url "https://repo.dupunkto.org/dotfiles-r646.7cc2855.tar.gz"
  sha256 "0f848e5c376fcc7f9b2a98ac3fb99fdc56756e6e0cff713d9a0449c904e8f073"
  version "r646.7cc2855"

  head "https://git.dupunkto.org/meta/dotfiles.git", branch: "master"

  license "Unlicense"

  depends_on "gum"
  depends_on "python@3.14"

  def install
    bin.install "bin/tailshare"
  end
end
