EAPI=8

DESCRIPTION="A lightweight container-based network emulation system."
HOMEPAGE="https://www.kathara.org"
SRC_URI="https://github.com/KatharaFramework/Kathara/releases/download/${PV}/${PN}-3.7.9-1-any.pkg.tar.zst"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}"

BDEPEND="
    app-arch/tar
"

RDEPEND="
    app-containers/docker
"

src_unpack(){
    tar xvf ${DISTDIR}/${PN}-3.7.9-1-any.pkg.tar.zst
}

src_compile(){
    einfo $(pwd)
}

src_install(){
    einfo $(pwd)
    insinto /usr/lib
    doins -r /usr/lib/kathara
    fperms 0755 /usr/lib/kathara/kathara

    dosym /usr/lib/kathara/kathara /usr/bin/kathara
}
