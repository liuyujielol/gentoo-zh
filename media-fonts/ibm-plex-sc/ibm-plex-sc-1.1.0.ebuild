# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="IBM Plex Sans Chinese SC"
HOMEPAGE="https://github.com/IBM/plex"
SRC_URI="https://github.com/IBM/plex/releases/download/@ibm/plex-sans-sc@${PV}/ibm-plex-sans-sc.zip -> ${P}.zip"
S="${WORKDIR}"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"
BDEPEND="app-arch/unzip"
IUSE="otf +ttf"
REQUIRED_USE="^^ ( otf ttf )"

FONT_SUFFIX=""

src_install() {

if use otf; then

	FONT_SUFFIX+="otf"

	FONT_S=(
		ibm-plex-sans-sc/fonts/complete/otf/unhinted )
fi

if use ttf; then

	FONT_SUFFIX+="ttf"

	FONT_S=(
		ibm-plex-sans-sc/fonts/complete/ttf/unhinted )
fi

font_src_install

}
