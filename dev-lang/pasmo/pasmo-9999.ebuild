EAPI=8

inherit toolchain-funcs

DESCRIPTION="Z80 cross assembler"
HOMEPAGE="https://pasmo.speccy.org/"
SRC_URI="https://pasmo.speccy.org/bin/pasmo-0.5.5.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/pasmo-0.5.5"

src_compile() {
    emake CC="$(tc-getCC)"
}

src_install() {
    dobin pasmo
}
