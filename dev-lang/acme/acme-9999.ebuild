EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="ACME Cross Assembler for 6502"
HOMEPAGE="https://sourceforge.net/projects/acme-crossass/"

EGIT_REPO_URI="https://github.com/meonwax/acme.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
    emake -C src -f Makefile CC="$(tc-getCC)" CFLAGS="${CFLAGS}" || die
}

src_install() {
    dobin src/acme
    dodoc README* 2>/dev/null
}
