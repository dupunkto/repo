EAPI=8

inherit git-r3

DESCRIPTION="Dependency-based command runner"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="app-shells/bash sys-apps/shellutils"

src_install() {
	dobin bin/recipe
}
