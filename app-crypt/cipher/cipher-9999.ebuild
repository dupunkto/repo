EAPI=8

inherit git-r3

DESCRIPTION="Securely send passphrases and API keys"
HOMEPAGE="https://git.dupunkto.org/~dupunkto/cipher"
EGIT_REPO_URI="https://git.dupunkto.org/~dupunkto/cipher.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="
	app-misc/jq
	net-libs/nodejs
	net-misc/curl
	sys-apps/arg
	sys-apps/shellutils
"

src_install() {
	dobin bin/cipher
}
