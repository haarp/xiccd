EAPI="5"

DESCRIPTION="xiccd is a simple bridge between colord and X"
HOMEPAGE="https://github.com/agalakhov/xiccd/"
SRC_URI="https://github.com/agalakhov/xiccd/archive/v${PV}.tar.gz -> ${P}.tar.gz"

inherit autotools

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-libs/glib-2.36
	 >=x11-apps/xrandr-1.3
	 >=x11-misc/colord-1.0.2"

DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}
