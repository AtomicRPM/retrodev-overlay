EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="6502 C compiler, assembler, and linker toolchain"
HOMEPAGE="https://cc65.github.io/ https://github.com/cc65/cc65"

EGIT_REPO_URI="https://github.com/cc65/cc65.git"
EGIT_COMMIT="V2.19"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake clean || true
	emake -j1 all
}

src_install() {
    emake DESTDIR="${D}" PREFIX="/usr" install
}
