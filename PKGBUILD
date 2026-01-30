# Maintainer: roehistat <mail at iyxeyl.me>

pkgname=critique
pkgver=0.1.78
pkgrel=1
pkgdesc="A beautiful terminal UI for reviewing git diffs with syntax highlighting"
arch=(x86_64)
url="https://github.com/remorses/critique"
license=('MIT')
depends=(git)
makedepends=(bun)
options=('!strip' '!debug')
source=("$pkgname::git+$url.git#tag=$pkgname@$pkgver")
sha256sums=('e455f3ef8f2133b420e1c4a81d7606f5925763f69af38879661f234e9c856d96')

build() {
  cd "$srcdir/$pkgname"
  bun install
  bun build --compile --target=bun-linux-x64-modern ./src/cli.tsx --outfile ./dist/critique
}

package() {
  cd "$srcdir/$pkgname"
  install -Dm755 dist/critique "$pkgdir/usr/bin/critique"
}
