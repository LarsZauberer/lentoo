EAPI=8

DESCRIPTION="A lightweight container-based network emulation system."
HOMEPAGE="https://www.kathara.org"
SRC_URI="https://github.com/KatharaFramework/Kathara/releases/download/${PV}/kathara-3.7.9-1-any.pkg.tar.zst -> kathara.pkg.tar.zst"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}"

RDEPEND="
    app-containers/docker
"

src_unpack(){
    tar xvf ${DISTDIR}/kathara.pkg.tar.zst
}

src_install(){
    insinto /usr/lib
    doins -r usr/lib/kathara
    fperms 0755 /usr/lib/kathara/kathara

    dosym /usr/lib/kathara/kathara /usr/bin/kathara
}
