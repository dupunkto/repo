EAPI=8

inherit git-r3

DESCRIPTION="POSIX shell argument parser"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

src_install() {
	dobin bin/arg
}
