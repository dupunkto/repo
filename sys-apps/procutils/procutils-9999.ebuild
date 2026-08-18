EAPI=8

inherit git-r3

DESCRIPTION="Shell process utility scripts"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="app-shells/bash"

src_install() {
	dobin bin/spawn bin/log
}
