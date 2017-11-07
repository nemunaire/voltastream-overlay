Voltastream Gentoo Overlay
==========================

This overlay includes ebuilds for the following packages:

* `sys-kernel/polyvection-sources`: Linux source for Voltastream devices <https://github.com/PolyVection/linux-imx>


Usage with Portage
------------------

```
mkdir /usr/local/portage
git clone git://github.com:nemunaire/voltastream-overlay.git /usr/local/portage/voltastream
cat <<EOF > /etc/portage/repos.conf/voltastream.conf
[voltastream]
priority = 50
location = /usr/local/portage/voltastream
sync-type = git
sync-uri = git://github.com:nemunaire/voltastream-overlay.git
auto-sync = yes
EOF
```
