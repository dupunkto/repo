EAPI=8

inherit git-r3

DESCRIPTION="Common development toolchain"
HOMEPAGE="https://git.dupunkto.org/~dupunkto/sandwich"
EGIT_REPO_URI="https://git.dupunkto.org/~dupunkto/sandwich.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="dev-util/bake"

src_install() {
	insinto /usr/share/bake/layers
	doins bun elixir flask node phoenix php python
}
