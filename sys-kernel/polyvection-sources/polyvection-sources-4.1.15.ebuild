# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ETYPE=sources
K_DEFCONFIG="imx_v7_PV_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"

inherit kernel-2

detect_version
detect_arch

inherit git-r3

EGIT_REPO_URI="https://github.com/PolyVection/linux-imx.git"
EGIT_BRANCH="imx_${PV}_2.1.0_ga_PV"
EGIT_CHECKOUT_DIR="${S}"

DESCRIPTION="Linux source for Voltastream devices"
HOMEPAGE="https://github.com/PolyVection/linux-imx"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~arm"

RDEPEND="sys-devel/bc"
RDEPEND="
	app-arch/lzop
	"

src_unpack()
{
	git-r3_src_unpack
	unpack_set_extraversion
}
