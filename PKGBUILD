# Maintainer: roehistat <mail at iyxeyl.me>

pkgname=critique
pkgver=0.1.105
pkgrel=1
pkgdesc="A beautiful terminal UI for reviewing git diffs with syntax highlighting"
arch=(x86_64)
url="https://github.com/remorses/critique"
license=('MIT')
depends=(git)
makedepends=(bun)
options=('!strip' '!debug')
source=("$pkgname::git+$url.git#tag=$pkgname@$pkgver")
sha256sums=('1031b17608bed87bc7980cd20fa8c281a68ee04f7f8aa0f5a7def7f7741180bd')

build() {
  cd "$srcdir/$pkgname"
  bun install
  bun build --compile --target=bun-linux-x64-modern ./src/cli.tsx --outfile ./dist/critique
}

package() {
  cd "$srcdir/$pkgname"
  install -Dm755 dist/critique "$pkgdir/usr/bin/critique"
}
