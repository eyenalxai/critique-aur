# Maintainer: roehistat <mail at iyxeyl.me>

pkgname=critique
pkgver=0.1.118
pkgrel=1
pkgdesc="A beautiful terminal UI for reviewing git diffs with syntax highlighting"
arch=(x86_64)
url="https://github.com/remorses/critique"
license=('MIT')
depends=(bun git)
options=('!strip' '!debug')

source=("$pkgname::git+$url.git#tag=$pkgname@$pkgver" "critique.sh")
sha256sums=('cd289c26bcbdcf29c928bafad29b9fa149a3825358c7949f6eefe435fc6d8854'
  '334e96257a0e1fe54de1e4ecce1e560c30b9571d62e291edd5732c30408a36bf')

package() {
  cd "$srcdir/$pkgname"
  bun install --frozen-lockfile

  mkdir -p "$pkgdir/usr/lib/critique"
  cp -r . "$pkgdir/usr/lib/critique/"

  install -Dm755 "$srcdir/critique.sh" "$pkgdir/usr/bin/critique"
}
