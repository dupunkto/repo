EAPI=8

inherit git-r3

DESCRIPTION="Kaas. Now available online"
HOMEPAGE="https://git.dupunkto.org/~dupunkto/cheese"
EGIT_REPO_URI="https://git.dupunkto.org/~dupunkto/cheese.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="dev-lang/python"

src_install() {
	newbin main.py cheese
}
