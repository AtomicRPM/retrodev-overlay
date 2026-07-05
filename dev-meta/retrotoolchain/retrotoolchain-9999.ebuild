EAPI=8

DESCRIPTION="Complete retro development toolchain"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror strip"

RDEPEND="
    dev-lang/z88dk
    dev-lang/sjasmplus
    dev-lang/acme
    dev-lang/cc65
    dev-lang/pasmo
    dev-lang/trse
    dev-util/xc3sprog
    dev-embedded/avrdude
    dev-embedded/openocd
    app-emulation/fuse
    app-emulation/fuse-utils
    app-emulation/vice
"
