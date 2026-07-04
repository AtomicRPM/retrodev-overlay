EAPI=8

inherit git-r3

DESCRIPTION="ACME Cross Assembler for 6502"
HOMEPAGE="https://sourceforge.net/projects/acme-crossass/"

EGIT_REPO_URI="https://github.com/meonwax/acme.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
    emake
}

src_install() {
    dobin acme
    dodoc README* 2>/dev/null
}
