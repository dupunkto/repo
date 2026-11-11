EAPI=8

inherit git-r3

DESCRIPTION="Git worktree manager"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="
	dev-vcs/git
	sys-apps/shellutils
"

src_install() {
	dobin bin/wt
}
