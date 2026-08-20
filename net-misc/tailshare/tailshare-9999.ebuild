EAPI=8

inherit git-r3

DESCRIPTION="Easily share files or directories over Tailscale"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="
	app-misc/gum
	dev-lang/python
	net-vpn/tailscale
"

src_install() {
	dobin bin/tailshare
}
